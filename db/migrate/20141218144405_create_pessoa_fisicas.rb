class CreatePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :pessoa_fisicas do |t|
      t.string :cpf
      t.references :pessoa, index: true

      t.timestamps
    end
  end
end
