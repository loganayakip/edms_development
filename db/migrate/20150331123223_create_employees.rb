class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_joining
      t.string :markuci_email
      t.string :coupa_email
      t.string :skype_id
      t.integer :contact_no
      t.text :address
      t.string :designation
      t.string :employee_status
      t.boolean :status, :default => true

      t.timestamps null: false
    end
  end
end
