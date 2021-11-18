require 'rails_helper'

RSpec.describe "death_events/edit", type: :view do
  before(:each) do
    @death_event = assign(:death_event, DeathEvent.create!(
      :avenger => nil,
      :returns => false
    ))
  end

  it "renders the edit death_event form" do
    render

    assert_select "form[action=?][method=?]", death_event_path(@death_event), "post" do

      assert_select "input[name=?]", "death_event[avenger_id]"

      assert_select "input[name=?]", "death_event[returns]"
    end
  end
end
