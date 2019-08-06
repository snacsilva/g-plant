require 'rails_helper'

RSpec.describe "corretors/edit", type: :view do
  before(:each) do
    @corretor = assign(:corretor, Corretor.create!(
      :nome => "MyString",
      :cpf => "MyString",
      :crea => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit corretor form" do
    render

    assert_select "form[action=?][method=?]", corretor_path(@corretor), "post" do

      assert_select "input[name=?]", "corretor[nome]"

      assert_select "input[name=?]", "corretor[cpf]"

      assert_select "input[name=?]", "corretor[crea]"

      assert_select "input[name=?]", "corretor[telefone]"
    end
  end
end
