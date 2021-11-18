require 'rails_helper'

RSpec.describe "avengers/index", type: :view do
  before(:each) do
    assign(:avengers, [
      Avenger.create!(
        :name => "Name",
        :url => "Url",
        :appearances => 2,
        :current => false,
        :gender => 3,
        :years_since_joining => 4,
        :membership => 5
      ),
      Avenger.create!(
        :name => "Name",
        :url => "Url",
        :appearances => 2,
        :current => false,
        :gender => 3,
        :years_since_joining => 4,
        :membership => 5
      )
    ])
  end

  it "renders a list of avengers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
