class ChangeBinaryFormatInEmployees < ActiveRecord::Migration
  def up
   change_column :employees, :contact_no, :binary
  end

  def down
   change_column :employees, :contact_no, :integer, :limit => 8
  end
end
