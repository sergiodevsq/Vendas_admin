class CreateComissaos < ActiveRecord::Migration[5.2]
  def change
    create_table :comissaos do |t|
      t.references :venda, foreign_key: true
      t.decimal :valor
      t.references :usuario, foreign_key: true
      t.integer :status
      t.text :notas

      t.timestamps
    end
  end
end
