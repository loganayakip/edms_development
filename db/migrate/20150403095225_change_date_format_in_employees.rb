class ChangeDateFormatInEmployees < ActiveRecord::Migration
  def up
   change_column :employees, :date_of_joining, :date
  end

  def down
   change_column :employees, :date_of_joining, :string
  end
end

