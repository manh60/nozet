class Product < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :IDSP, presence: true,
	length: { minimum: 1 }
end
