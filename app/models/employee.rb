class Employee < ActiveRecord::Base
validates :first_name, :last_name ,:date_of_joining ,:skype_id ,:address ,:designation ,:employee_status, presence: true
validates :markuci_email, :coupa_email, presence: true, format: { with:  /\b[0-9._%a-z\-]+@(?:[0-9a-z\-]+\.)+[a-z]{2,4}\z/}
validates_length_of :contact_no, :in => 9..10, :message => " must be 10"
 def display_name
     "#{self.first_name} #{self.last_name}"
 end
end
