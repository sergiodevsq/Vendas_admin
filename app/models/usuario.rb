class Usuario < ApplicationRecord

    enum tipo: [:vendedor, :gerente]
    enum status: [:ativo, :desativado]
    has_many :comissaos
    has_many :enderecos
    has_many :clientes
    has_many :produto_quantidades
    has_many :vendas

end
