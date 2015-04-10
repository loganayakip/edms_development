class AddDefaultValueToStatus < ActiveRecord::Migration
 def up
  change_column :employees, :status, :boolean, :default => true
end

def down
  change_column :employees, :status, :boolean, :default => nil
end
end
