require 'rails_helper'

RSpec.describe "empresas/edit", type: :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
      :nome => "MyString",
      :cnpj => "MyString"
    ))
  end

  it "renders the edit empresa form" do
    render

    assert_select "form[action=?][method=?]", empresa_path(@empresa), "post" do

      assert_select "input[name=?]", "empresa[nome]"

      assert_select "input[name=?]", "empresa[cnpj]"
    end
  end
end
