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

  def block
  end

  def execute
  end
end
