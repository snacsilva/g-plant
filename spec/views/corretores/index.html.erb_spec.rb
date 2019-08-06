require 'rails_helper'

RSpec.describe "corretors/index", type: :view do
  before(:each) do
    assign(:corretors, [
      Corretor.create!(
        :nome => "Nome",
        :cpf => "Cpf",
        :crea => "Crea",
        :telefone => "Telefone"
      ),
      Corretor.create!(
        :nome => "Nome",
        :cpf => "Cpf",
        :crea => "Crea",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of corretors" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Crea".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
