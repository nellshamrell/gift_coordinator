class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name

      t.timestamps
    end
  end
end
