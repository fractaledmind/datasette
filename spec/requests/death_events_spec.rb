require 'rails_helper'

RSpec.describe "DeathEvents", type: :request do
  describe "GET /death_events" do
    it "works! (now write some real specs)" do
      get death_events_path
      expect(response).to have_http_status(200)
    end
  end
end
