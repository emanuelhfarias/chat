class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.text :message
      t.references :employee, null: true, foreign_key: true
      t.references :talent, null: true, foreign_key: true
      t.string :sender_type
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
