require 'rails_helper'

RSpec.describe "clientes/show", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "Nome",
      :cpf => "Cpf",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Telefone/)
  end
end
