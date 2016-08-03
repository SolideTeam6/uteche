class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :marca
      t.float :precio
      t.string :imagen

      t.timestamps null: false
    end
  end
end
