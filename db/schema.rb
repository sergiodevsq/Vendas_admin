# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_14_095702) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "nome_empresa"
    t.string "documento"
    t.string "email"
    t.string "telefone"
    t.integer "usuario_id"
    t.text "notas"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_clientes_on_usuario_id"
  end

  create_table "comissaos", force: :cascade do |t|
    t.integer "venda_id"
    t.decimal "valor"
    t.integer "usuario_id"
    t.integer "status"
    t.text "notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_comissaos_on_usuario_id"
    t.index ["venda_id"], name: "index_comissaos_on_venda_id"
  end

  create_table "descontos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.integer "valor"
    t.integer "tipo"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "pais"
    t.string "cidade"
    t.string "estado"
    t.string "bairro"
    t.string "rua"
    t.string "numero"
    t.integer "cliente_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_enderecos_on_cliente_id"
  end

  create_table "produto_quantidades", force: :cascade do |t|
    t.integer "produto_id"
    t.integer "quantidade"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_produto_quantidades_on_produto_id"
    t.index ["usuario_id"], name: "index_produto_quantidades_on_usuario_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.integer "tipo"
    t.integer "status"
    t.text "notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.integer "cliente_id"
    t.date "data_venda"
    t.integer "usuario_id"
    t.integer "desconto_id"
    t.text "notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
    t.index ["desconto_id"], name: "index_vendas_on_desconto_id"
    t.index ["usuario_id"], name: "index_vendas_on_usuario_id"
  end

end
