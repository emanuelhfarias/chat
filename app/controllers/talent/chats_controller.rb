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
    Chat.create(
      message: params[:message],
      talent: current_user,
      employee: Employee.order('RANDOM()').first,
      sender_type: 'talent',
      company_id: params[:id]
    )

    head :created
  end
end
