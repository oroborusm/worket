class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :usuario_id
      t.integer :tipo_rol_id

      t.timestamps
    end
  end
end
