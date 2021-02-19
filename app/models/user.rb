class User < ApplicationRecord
  belongs_to :address
  has_many :posts, inverse_of: :user
end
