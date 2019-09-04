require 'rails_helper'

RSpec.describe "loteamentos/index", type: :view do
  before(:each) do
    assign(:loteamentos, [
      Loteamento.create!(
        :longitude => "Longitude",
        :latitude => "Latitude",
        :terreno_id => 2
      ),
      Loteamento.create!(
        :longitude => "Longitude",
        :latitude => "Latitude",
        :terreno_id => 2
      )
    ])
  end

  it "renders a list of loteamentos" do
    render
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
