require 'rails_helper'

RSpec.describe "death_events/new", type: :view do
  before(:each) do
    assign(:death_event, DeathEvent.new(
      :avenger => nil,
      :returns => false
    ))
  end

  it "renders new death_event form" do
    render

    assert_select "form[action=?][method=?]", death_events_path, "post" do

      assert_select "input[name=?]", "death_event[avenger_id]"

      assert_select "input[name=?]", "death_event[returns]"
    end
  end
end
