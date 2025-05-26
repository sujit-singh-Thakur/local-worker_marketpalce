class CreateApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :applications do |t|
      t.references :task, null: false, foreign_key: true
      t.references :workers, null: false, foreign_key: {to_table: :users}
      t.string :status

      t.timestamps
    end
  end
end
