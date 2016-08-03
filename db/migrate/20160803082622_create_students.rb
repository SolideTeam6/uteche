class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :matricula
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :imagen

      t.timestamps null: false
    end
  end
end
