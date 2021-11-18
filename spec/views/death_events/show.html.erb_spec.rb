require 'rails_helper'

RSpec.describe "death_events/show", type: :view do
  before(:each) do
    @death_event = assign(:death_event, DeathEvent.create!(
      :avenger => nil,
      :returns => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
