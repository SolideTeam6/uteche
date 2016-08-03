class CreateMonederos < ActiveRecord::Migration
  def change
    create_table :monederos do |t|
      t.references :student, index: true, foreign_key: true
      t.float :cantidad

      t.timestamps null: false
    end
  end
end
