class CreateCoffeees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffeees do |t|
      t.text :name
      t.string :typee
      t.string :desctrption
      t.string :home
      t.string :img
      t.string :something

      t.timestamps
    end
  end
end
