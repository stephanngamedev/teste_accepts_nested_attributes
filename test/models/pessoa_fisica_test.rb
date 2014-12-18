require 'test_helper'

class PessoaFisicaTest < ActiveSupport::TestCase
	test "the truth" do
		pessoa_fisica = PessoaFisica.new( cpf: '123', pessoa_attributes: { 
			nome: 'Teste', contato_attributes: {
				telefone: '1255-1254'
			}
		} )	
		contato = pessoa_fisica.pessoa.contato
		
		assert_equal true, pessoa_fisica.save
		assert_equal contato, pessoa_fisica.pessoa.contato
	end
end
