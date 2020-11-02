class CreatePresences < ActiveRecord::Migration[6.0]
  def change
    create_table :presences do |t|
      t.integer :engineer_id
      t.integer :working_date_id
      t.string :status

      t.timestamps
    end
    add_foreign_key :presences, :engineers
    add_foreign_key :presences, :working_dates
  end
end
