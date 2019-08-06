require 'rails_helper'

RSpec.describe "corretors/new", type: :view do
  before(:each) do
    assign(:corretor, Corretor.new(
      :nome => "MyString",
      :cpf => "MyString",
      :crea => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders new corretor form" do
    render

    assert_select "form[action=?][method=?]", corretors_path, "post" do

      assert_select "input[name=?]", "corretor[nome]"

      assert_select "input[name=?]", "corretor[cpf]"

      assert_select "input[name=?]", "corretor[crea]"

      assert_select "input[name=?]", "corretor[telefone]"
    end
  end
end
