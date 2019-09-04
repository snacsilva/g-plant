require 'rails_helper'

RSpec.describe "loteamentos/edit", type: :view do
  before(:each) do
    @loteamento = assign(:loteamento, Loteamento.create!(
      :longitude => "MyString",
      :latitude => "MyString",
      :terreno_id => 1
    ))
  end

  it "renders the edit loteamento form" do
    render

    assert_select "form[action=?][method=?]", loteamento_path(@loteamento), "post" do

      assert_select "input[name=?]", "loteamento[longitude]"

      assert_select "input[name=?]", "loteamento[latitude]"

      assert_select "input[name=?]", "loteamento[terreno_id]"
    end
  end
end
