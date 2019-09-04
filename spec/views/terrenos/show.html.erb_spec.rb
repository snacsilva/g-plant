require 'rails_helper'

RSpec.describe "lotes/show", type: :view do
  before(:each) do
    @lote = assign(:lote, Lote.create!(
      :name => "Name",
      :latitude_1 => "Latitude 1",
      :latitude_2 => "Latitude 2",
      :longitude_1 => "Longitude 1",
      :longitude_2 => "Longitude 2",
      :image_name => "Image Name",
      :image_type => "Image Type",
      :tile_url_x => "Tile Url X",
      :tile_url_y => "Tile Url Y",
      :tile_url_z => "Tile Url Z"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Latitude 1/)
    expect(rendered).to match(/Latitude 2/)
    expect(rendered).to match(/Longitude 1/)
    expect(rendered).to match(/Longitude 2/)
    expect(rendered).to match(/Image Name/)
    expect(rendered).to match(/Image Type/)
    expect(rendered).to match(/Tile Url X/)
    expect(rendered).to match(/Tile Url Y/)
    expect(rendered).to match(/Tile Url Z/)
  end
end
