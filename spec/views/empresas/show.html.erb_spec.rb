require 'rails_helper'

RSpec.describe "empresas/show", type: :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
      :nome => "Nome",
      :cnpj => "Cnpj"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cnpj/)
  end
end
