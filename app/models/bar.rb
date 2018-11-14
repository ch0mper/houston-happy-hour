class Bar < ApplicationRecord
  has_many :user_bars
  has_many :users, through: :user_bars

  def visited?
  end

  def liked?
    UserBar.find_by(bar_id: self.id, user_id: @user.id).like
  end

end
