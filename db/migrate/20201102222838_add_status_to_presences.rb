class AddStatusToPresences < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE presence_status AS ENUM ('working', 'maybe', 'off')
    SQL
    add_column :presences, :status, :presence_status
  end

  def down
    remove_column :presences, :status
    execute <<-SQL
      DROP TYPE presence_status;
    SQL
  end
end
