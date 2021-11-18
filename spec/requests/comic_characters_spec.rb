require 'rails_helper'

RSpec.describe "ComicCharacters", type: :request do
  describe "GET /comic_characters" do
    it "works! (now write some real specs)" do
      get comic_characters_path
      expect(response).to have_http_status(200)
    end
  end
end
