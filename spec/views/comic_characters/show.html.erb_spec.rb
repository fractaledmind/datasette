require 'rails_helper'

RSpec.describe "comic_characters/show", type: :view do
  before(:each) do
    @comic_character = assign(:comic_character, ComicCharacter.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Universe/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Eye/)
    expect(rendered).to match(/Hair/)
    expect(rendered).to match(/Identity Type/)
    expect(rendered).to match(/Alignment/)
  end
end
