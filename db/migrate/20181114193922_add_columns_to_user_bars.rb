class AddColumnsToUserBars < ActiveRecord::Migration[5.2]
  def change
    add_column :user_bars, :visit, :boolean
    add_column :user_bars, :like, :boolean
  end
end
