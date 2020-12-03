class Employee::ChatsController < Employee::ApplicationController
  def index
    chats = Chat.where(company: current_user.company).group(:talent_id).order(created_at: :desc)

    render json: chats
  end

  def show
    chats = Chat.where(talent_id: params[:id], company: current_user.company).order(created_at: :asc)

    render json: chats
  end

  def create
    return head :bad_request if chat_blocked?

    Chat.create(
      message: params[:message],
      talent_id: params[:id],
      employee: current_user,
      sender_type: 'employee',
      company: current_user.company
    )

    head :created
  end

  def read
    Chat.where(talent_id: params[:id], company: current_user.company, sender_type: 'talent').update(read: true)

    head :ok
  end

  def execute
    case params[:action]
    when 'block'
      block
    when 'offer'
      offer
    end
  end

  private

  def chat_blocked?
    Chat.exists?(block: true, talent_id: params[:id], company: current_user.company)
  end

  def block
    Chat.create(
      talent_id: params[:id],
      employee: current_user,
      sender_type: 'employee',
      company: current_user.company,
      block: true
    )

    head :ok
  end

  def offer
  end
end
