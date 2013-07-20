class Order < ActiveRecord::Base
	attr_accessible :email, :content, :last_name, :first_name, :phone
  validates :last_name, :first_name, :phone, presence: true
  validates :email, presence: true, email: true
  validates :content, presence: true, length: { minimum: 6, maximum: 2048 }
end
