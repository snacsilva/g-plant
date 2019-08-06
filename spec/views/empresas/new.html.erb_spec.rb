require 'rails_helper'

RSpec.describe "empresas/new", type: :view do
  before(:each) do
    assign(:empresa, Empresa.new(
      :nome => "MyString",
      :cnpj => "MyString"
    ))
  end

  it "renders new empresa form" do
    render

    assert_select "form[action=?][method=?]", empresas_path, "post" do

      assert_select "input[name=?]", "empresa[nome]"

      assert_select "input[name=?]", "empresa[cnpj]"
    end
  end
end
