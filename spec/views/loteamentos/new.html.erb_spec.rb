require 'rails_helper'

RSpec.describe "loteamentos/new", type: :view do
  before(:each) do
    assign(:loteamento, Loteamento.new(
      :longitude => "MyString",
      :latitude => "MyString",
      :terreno_id => 1
    ))
  end

  it "renders new loteamento form" do
    render

    assert_select "form[action=?][method=?]", loteamentos_path, "post" do

      assert_select "input[name=?]", "loteamento[longitude]"

      assert_select "input[name=?]", "loteamento[latitude]"

      assert_select "input[name=?]", "loteamento[terreno_id]"
    end
  end
end
