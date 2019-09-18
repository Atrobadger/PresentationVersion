class User < ApplicationRecord
  validates :firstname,  presence: true, length: { maximum: 50 }
  validates :lastname,  presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: { maximum: 50 }
  validates :phonenumber, presence: true, length: { maximum: 10 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :emailaddress, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
                    
  validates :ismanager, presence: true
  validates :isactive, presence: true
end
