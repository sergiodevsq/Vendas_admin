class Cliente < ApplicationRecord
  belongs_to :usuario
  enum status: [:ativo, :desativado]
  has_one :endereco
end
