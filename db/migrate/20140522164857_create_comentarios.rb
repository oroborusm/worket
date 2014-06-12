class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :titulo
      t.text :texto
      t.integer :usuario_worket_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
