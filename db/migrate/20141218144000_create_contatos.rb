class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :telefone
      t.references :pessoa
      t.timestamps
    end
  end
end
