require 'rails_helper'

RSpec.describe "trainings/index", type: :view do
  before(:each) do
    assign(:trainings, [
      Training.create!(
        format: 2,
        state: 3,
        primary_group: nil,
        support_group: nil,
        user: nil
      ),
      Training.create!(
        format: 2,
        state: 3,
        primary_group: nil,
        support_group: nil,
        user: nil
      )
    ])
  end

  it "renders a list of trainings" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
