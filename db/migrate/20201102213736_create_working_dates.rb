class CreateWorkingDates < ActiveRecord::Migration[6.0]
  def change
    create_table :working_dates do |t|
      t.date :working_date

      t.timestamps
    end
  end
end
