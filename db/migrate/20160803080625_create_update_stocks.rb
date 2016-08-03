class CreateUpdateStocks < ActiveRecord::Migration
  def change
    create_table :update_stocks do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
