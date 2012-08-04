class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.string :nombre
      t.string :descripcion
      t.float :precio
      t.boolean :porcion_completa
      t.string :tipo

      t.timestamps
    end
  end
end
