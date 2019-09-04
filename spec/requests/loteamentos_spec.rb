require 'rails_helper'

RSpec.describe "Loteamentos", type: :request do
  describe "GET /loteamentos" do
    it "works! (now write some real specs)" do
      get loteamentos_path
      expect(response).to have_http_status(200)
    end
  end
end
