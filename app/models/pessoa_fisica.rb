class PessoaFisica < ActiveRecord::Base
	belongs_to :pessoa, inverse_of: :pessoa_fisica
	accepts_nested_attributes_for :pessoa
	validates_presence_of :pessoa
end
