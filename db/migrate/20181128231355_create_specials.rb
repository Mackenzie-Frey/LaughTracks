class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.integer :name
      t.integer :length
      t.timestamps null: false
    end
  end
end
