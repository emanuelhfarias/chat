class AddReadToChats < ActiveRecord::Migration[6.0]
  def change
    add_column :chats, :read, :boolean, default: false
  end
end
