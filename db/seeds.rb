# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Criando nossos Usuarios --- 
# OBS: Depois que adicionarmos o devise precisamos 
# incluir o email e senha dos usuarios
Usuario.create nome: 'José', status: :ativo, tipo: :vendedor
Usuario.create nome: 'Marcos', status: :ativo, tipo: :gerente
 
# Criando alguns produtos de exemplo
Produto.create nome: 'Smartphone', descricao:'Um smartphone novo ...', status: :ativo
Produto.create nome: 'Tablet', descricao:'Um tablet novo ...', status: :ativo
 
# Criando um desconto de exemplo
Desconto.create nome: 'Desconto carnaval', descricao: 'Aplique esse desconto no carnaval', valor: '10', tipo: :percentual, status: :ativo