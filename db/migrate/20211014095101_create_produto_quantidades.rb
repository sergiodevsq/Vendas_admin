class CreateProdutoQuantidades < ActiveRecord::Migration[5.2]
  def change
    create_table :produto_quantidades do |t|
      t.references :produto, foreign_key: true
      t.integer :quantidade
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
