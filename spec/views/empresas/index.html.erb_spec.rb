require 'rails_helper'

RSpec.describe "empresas/index", type: :view do
  before(:each) do
    assign(:empresas, [
      Empresa.create!(
        :nome => "Nome",
        :cnpj => "Cnpj"
      ),
      Empresa.create!(
        :nome => "Nome",
        :cnpj => "Cnpj"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
  end
end
