class Portfolio < ApplicationRecord
	has_secure_password

	has_many :stocks
	validates :account_name, presence: true
	validates :account_name, uniqueness: true
	validates :password_digest, presence: true

end
