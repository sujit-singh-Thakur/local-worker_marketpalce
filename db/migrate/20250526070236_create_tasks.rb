class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.string :contact_info
      t.integer :catagory_id
      t.references :contractor, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
