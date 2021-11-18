require 'rails_helper'

RSpec.describe "avengers/show", type: :view do
  before(:each) do
    @avenger = assign(:avenger, Avenger.create!(
      :name => "Name",
      :url => "Url",
      :appearances => 2,
      :current => false,
      :gender => 3,
      :years_since_joining => 4,
      :membership => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
