class User < ApplicationRecord
  has_many :user_bars
  has_many :bars, through: :user_bars
end
