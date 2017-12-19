class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.references :field, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.decimal :tarifa

      t.timestamps
    end
  end
end
