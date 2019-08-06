require 'rails_helper'

RSpec.describe "corretors/show", type: :view do
  before(:each) do
    @corretor = assign(:corretor, Corretor.create!(
      :nome => "Nome",
      :cpf => "Cpf",
      :crea => "Crea",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Crea/)
    expect(rendered).to match(/Telefone/)
  end
end
