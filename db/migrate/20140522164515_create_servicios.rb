class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.integer :usuario_id
      t.string :titulo
      t.text :resumen
      t.integer :precio
      t.binary :adjunto

      t.timestamps
    end
  end
end
