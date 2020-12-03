class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :company, index: true, foreign_key: true

      t.timestamps
    end
  end
end
