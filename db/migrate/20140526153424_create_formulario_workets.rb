class CreateFormularioWorkets < ActiveRecord::Migration
  def change
    create_table :formulario_workets do |t|
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.string :rut
      t.string :email
      t.string :telefono
      t.text :actividad
      t.binary :adjunto

      t.timestamps
    end
  end
end
