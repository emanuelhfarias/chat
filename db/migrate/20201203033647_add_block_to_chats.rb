class AddBlockToChats < ActiveRecord::Migration[6.0]
  def change
    add_column :chats, :block, :boolean, default: false
  end
end
