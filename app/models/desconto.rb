class Desconto < ApplicationRecord
    enum status: [:ativo, :desativado]
    enum tipo: [:percentual, :valor]
end
