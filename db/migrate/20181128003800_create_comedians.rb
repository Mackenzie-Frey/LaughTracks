class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    # why is the below called t?
    create_table :comedians do |t|
      t.text    :name
      t.integer :age
      t.text    :city
      t.timestamps null: false
    end
  end
end
