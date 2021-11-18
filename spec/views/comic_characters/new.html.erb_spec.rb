require 'rails_helper'

RSpec.describe "comic_characters/new", type: :view do
  before(:each) do
    assign(:comic_character, ComicCharacter.new(
      :universe => "MyString",
      :name => "MyString",
      :url => "MyString",
      :appearances => 1,
      :alive => false,
      :gender => "MyString",
      :eye => "MyString",
      :hair => "MyString",
      :identity_type => "MyString",
      :alignment => "MyString"
    ))
  end

  it "renders new comic_character form" do
    render

    assert_select "form[action=?][method=?]", comic_characters_path, "post" do

      assert_select "input[name=?]", "comic_character[universe]"

      assert_select "input[name=?]", "comic_character[name]"

      assert_select "input[name=?]", "comic_character[url]"

      assert_select "input[name=?]", "comic_character[appearances]"

      assert_select "input[name=?]", "comic_character[alive]"

      assert_select "input[name=?]", "comic_character[gender]"

      assert_select "input[name=?]", "comic_character[eye]"

      assert_select "input[name=?]", "comic_character[hair]"

      assert_select "input[name=?]", "comic_character[identity_type]"

      assert_select "input[name=?]", "comic_character[alignment]"
    end
  end
end
