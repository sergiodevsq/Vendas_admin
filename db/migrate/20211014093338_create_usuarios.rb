class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :documento
      t.integer :tipo
      t.integer :status
      t.text :notas

      t.timestamps
    end
  end
end
