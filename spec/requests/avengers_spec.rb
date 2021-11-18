require 'rails_helper'

RSpec.describe "Avengers", type: :request do
  describe "GET /avengers" do
    it "works! (now write some real specs)" do
      get avengers_path
      expect(response).to have_http_status(200)
    end
  end
end
