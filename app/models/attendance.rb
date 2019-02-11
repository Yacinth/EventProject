class Attendance < ApplicationRecord
  belongs_to :participant, class_name: "User"
  belongs_to :event
  
  validates :stripe_customer_id, uniqueness: true

end
