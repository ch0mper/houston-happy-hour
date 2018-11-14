class UserBar < ApplicationRecord
  belongs_to :user
  belongs_to :bar

  def visited
    if self.visit == true
      self.update(visit: false)
    else
      self.update(visit: true)
    end
  end

  def liked
    if self.like == true
      self.update(like: false)
    else
      self.update(like: true)
    end
  end

end
