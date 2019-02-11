class User < ApplicationRecord
  before_save {  |user| user.email = email.downcase }
  #after_create :welcome_send
  validates :first_name, 
    presence: true 
  validates :last_name, 
    presence: true 
  validates :description, 
    presence: true
  
  has_secure_password

  has_many :attendances
  has_many :events, through: :attendances

  #def welcome_send
  #  UserMailer.welcome_email(self).deliver_now
  #end
end
