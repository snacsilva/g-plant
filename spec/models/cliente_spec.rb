require 'rails_helper'

RSpec.describe Cliente, type: :model do
  it { is_expected.to validate_presence_of(:nome) }
  it { is_expected.to validate_presence_of(:cpf) }
end
