require 'rails_helper'

RSpec.describe "lotes/index", type: :view do
  before(:each) do
    assign(:lotes, [
      Lote.create!(
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
      ),
      Lote.create!(
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
      )
    ])
  end

  it "renders a list of lotes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude 1".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude 2".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude 1".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude 2".to_s, :count => 2
    assert_select "tr>td", :text => "Image Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image Type".to_s, :count => 2
    assert_select "tr>td", :text => "Tile Url X".to_s, :count => 2
    assert_select "tr>td", :text => "Tile Url Y".to_s, :count => 2
    assert_select "tr>td", :text => "Tile Url Z".to_s, :count => 2
  end
end
