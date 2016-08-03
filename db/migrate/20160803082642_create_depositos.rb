class CreateDepositos < ActiveRecord::Migration
  def change
    create_table :depositos do |t|
      t.references :student, index: true, foreign_key: true
      t.float :cantidad

      t.timestamps null: false
    end
  end
end
