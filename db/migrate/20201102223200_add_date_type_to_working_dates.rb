class AddDateTypeToWorkingDates < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE date_type AS ENUM ('weekday', 'weekend', 'holiday', 'special')
    SQL
    add_column :working_dates, :day_type, :date_type
  end

  def down
    remove_column :working_dates, :day_type
    execute <<-SQL
      DROP TYPE date_type;
    SQL
  end
end
