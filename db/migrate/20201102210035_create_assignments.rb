class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :engineer_id
      t.integer :service_id

      t.timestamps
    end
    add_foreign_key :assignments, :engineers
    add_foreign_key :assignments, :services
  end
end
