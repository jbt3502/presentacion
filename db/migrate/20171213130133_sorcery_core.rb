class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :user_type, foreign_key: true
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :sexo
      t.integer :dni
      t.date :fecha_nacimiento
      t.string :celular
      t.string :direccion

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
