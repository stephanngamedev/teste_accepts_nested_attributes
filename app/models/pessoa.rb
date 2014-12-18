class Pessoa < ActiveRecord::Base
	has_one :contato
	has_one :pessoa_fisica

	validates_presence_of :contato, :pessoa_fisica

	accepts_nested_attributes_for :contato
end
