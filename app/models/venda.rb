class Venda < ApplicationRecord
  belongs_to :cliente
  belongs_to :usuario
  belongs_to :desconto
  has_many :produto_quantidade
end
