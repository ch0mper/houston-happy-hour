class User < ApplicationRecord
  has_many :user_bars
  has_many :bars, through: :user_bars
  has_secure_password

  validates :username, :presence => true, :uniqueness => true
  validates :age, :numericality => { :only_integer => true, :greater_than_or_equal_to => 21 }

end
