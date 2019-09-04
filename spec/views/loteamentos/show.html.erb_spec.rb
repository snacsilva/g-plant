require 'rails_helper'

RSpec.describe "loteamentos/show", type: :view do
  before(:each) do
    @loteamento = assign(:loteamento, Loteamento.create!(
      :longitude => "Longitude",
      :latitude => "Latitude",
      :terreno_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/2/)
  end
end
