require 'rails_helper'

RSpec.describe "Corretors", type: :request do
  describe "GET /corretors" do
    it "works! (now write some real specs)" do
      get corretors_path
      expect(response).to have_http_status(200)
    end
  end
end
