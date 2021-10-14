class Comissao < ApplicationRecord
  belongs_to :venda
  belongs_to :usuario
end
