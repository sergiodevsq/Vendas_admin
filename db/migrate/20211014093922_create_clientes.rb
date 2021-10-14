class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :nome_empresa
      t.string :documento
      t.string :email
      t.string :telefone
      t.references :usuario, foreign_key: true
      t.text :notas
      t.integer :status

      t.timestamps
    end
  end
end
