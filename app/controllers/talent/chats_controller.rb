class Talent::ChatsController < Talent::ApplicationController
  def index
    chats = Chat.where(talent: current_user).group(:company).order(created_at: :desc)

    render json: chats
  end

  def show
    chats = Chat.where(talent: current_user, company_id: params[:id]).order(created_at: :asc)

    render json: chats
  end

  def create
    return head :bad_request if chat_blocked?

    Chat.create!(
      message: params[:message],
      talent: current_user,
      sender_type: 'talent',
      company_id: params[:id]
    )

    head :created
  end

  def read
    Chat.where(talent: current_user, company_id: params[:id], sender_type: 'employee').update(read: true)

    head :ok
  end

  private

  def chat_blocked?
    Chat.exists?(block: true, talent: current_user, company_id: params[:id])
  end
end
