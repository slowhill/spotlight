class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :fname, presence: true
	validates :lname, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false }
	validates :username, presence: true
	validates :password, presence: true, length: { minimum: 8 }

	has_secure_password
end
