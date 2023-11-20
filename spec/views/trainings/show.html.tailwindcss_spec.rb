require 'rails_helper'

RSpec.describe "trainings/show", type: :view do
  before(:each) do
    assign(:training, Training.create!(
      format: 2,
      state: 3,
      primary_group: nil,
      support_group: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
