class Cliente < ApplicationRecord
    has_many :lotes
    validates_presence_of :nome, :cpf
end
