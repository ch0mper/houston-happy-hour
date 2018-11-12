class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :neighborhood
      t.string :vibe
      t.string :price_level
      t.string :price_list
      t.string :start_time
      t.string :end_time
      t.string :menu_img_url

      t.timestamps
    end
  end
end
