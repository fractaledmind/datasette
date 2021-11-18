require 'rails_helper'

RSpec.describe "death_events/index", type: :view do
  before(:each) do
    assign(:death_events, [
      DeathEvent.create!(
        :avenger => nil,
        :returns => false
      ),
      DeathEvent.create!(
        :avenger => nil,
        :returns => false
      )
    ])
  end

  it "renders a list of death_events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
