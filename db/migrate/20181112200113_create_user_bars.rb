class CreateUserBars < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bars do |t|
      t.belongs_to :user
      t.belongs_to :bars
      t.timestamps
    end
  end
end
