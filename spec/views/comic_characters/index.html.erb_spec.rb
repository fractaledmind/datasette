require 'rails_helper'

RSpec.describe "comic_characters/index", type: :view do
  before(:each) do
    assign(:comic_characters, [
      ComicCharacter.create!(
        :universe => "Universe",
        :name => "Name",
        :url => "Url",
        :appearances => 2,
        :alive => false,
        :gender => "Gender",
        :eye => "Eye",
        :hair => "Hair",
        :identity_type => "Identity Type",
        :alignment => "Alignment"
      ),
      ComicCharacter.create!(
        :universe => "Universe",
        :name => "Name",
        :url => "Url",
        :appearances => 2,
        :alive => false,
        :gender => "Gender",
        :eye => "Eye",
        :hair => "Hair",
        :identity_type => "Identity Type",
        :alignment => "Alignment"
      )
    ])
  end

  it "renders a list of comic_characters" do
    render
    assert_select "tr>td", :text => "Universe".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Eye".to_s, :count => 2
    assert_select "tr>td", :text => "Hair".to_s, :count => 2
    assert_select "tr>td", :text => "Identity Type".to_s, :count => 2
    assert_select "tr>td", :text => "Alignment".to_s, :count => 2
  end
end
