class Produto < ApplicationRecord

    enum status: [:ativo, :desativado]
    has_many :produto_quantidade

end
