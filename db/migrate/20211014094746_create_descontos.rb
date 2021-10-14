class CreateDescontos < ActiveRecord::Migration[5.2]
  def change
    create_table :descontos do |t|
      t.string :nome
      t.text :descricao
      t.integer :valor
      t.integer :tipo
      t.integer :status

      t.timestamps
    end
  end
end
