class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :pais
      t.string :cidade
      t.string :estado
      t.string :bairro
      t.string :rua
      t.string :numero
      t.references :cliente, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
