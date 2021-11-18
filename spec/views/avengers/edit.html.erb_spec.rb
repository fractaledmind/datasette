require 'rails_helper'

RSpec.describe "avengers/edit", type: :view do
  before(:each) do
    @avenger = assign(:avenger, Avenger.create!(
      :name => "MyString",
      :url => "MyString",
      :appearances => 1,
      :current => false,
      :gender => 1,
      :years_since_joining => 1,
      :membership => 1
    ))
  end

  it "renders the edit avenger form" do
    render

    assert_select "form[action=?][method=?]", avenger_path(@avenger), "post" do

      assert_select "input[name=?]", "avenger[name]"

      assert_select "input[name=?]", "avenger[url]"

      assert_select "input[name=?]", "avenger[appearances]"

      assert_select "input[name=?]", "avenger[current]"

      assert_select "input[name=?]", "avenger[gender]"

      assert_select "input[name=?]", "avenger[years_since_joining]"

      assert_select "input[name=?]", "avenger[membership]"
    end
  end
end
