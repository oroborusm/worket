class CreateMedias < ActiveRecord::Migration
  def change
    create_table :medias do |t|
      t.string :nombre_archivo
      t.integer :servicio_id

      t.timestamps
    end
  end
end
