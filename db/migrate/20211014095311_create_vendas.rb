class CreateVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :vendas do |t|
      t.references :cliente, foreign_key: true
      t.date :data_venda
      t.references :usuario, foreign_key: true
      t.references :desconto, foreign_key: true
      t.text :notas

      t.timestamps
    end
  end
end
