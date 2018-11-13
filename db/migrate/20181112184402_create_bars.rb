class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :neighborhood
      t.string :vibe
      t.string :price_level
      t.string :sake
      t.string :beer
      t.string :cocktail
      t.string :wine_glass
      t.string :wine_bottle
      t.string :beer_and_shot
      t.string :well_drink
      t.datetime :start_time
      t.datetime :end_time
      t.string :menu_img_url

      t.timestamps
    end
  end
end
