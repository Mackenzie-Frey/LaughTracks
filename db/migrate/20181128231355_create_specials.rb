class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :title
      t.integer :length
      t.integer :comedian_id
      t.text :photo
      t.timestamps null: false
    end
  end
end
