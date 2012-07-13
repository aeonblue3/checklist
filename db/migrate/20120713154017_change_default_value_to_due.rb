class ChangeDefaultValueToDue < ActiveRecord::Migration
  def up
    remove_column :tasks, :due
    add_column :tasks, :due, :datetime
  end

  def down
    remove_column :tasks, :due
    add_column :tasks, :due, :datetime, :default => '0000-00-00 00:00:00', :null => false
  end
end
