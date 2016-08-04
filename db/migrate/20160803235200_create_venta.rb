class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.references :student, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
