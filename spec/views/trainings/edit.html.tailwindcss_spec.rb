require 'rails_helper'

RSpec.describe "trainings/edit", type: :view do
  let(:training) {
    Training.create!(
      format: 1,
      state: 1,
      primary_group: nil,
      support_group: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:training, training)
  end

  it "renders the edit training form" do
    render

    assert_select "form[action=?][method=?]", training_path(training), "post" do

      assert_select "input[name=?]", "training[format]"

      assert_select "input[name=?]", "training[state]"

      assert_select "input[name=?]", "training[primary_group_id]"

      assert_select "input[name=?]", "training[support_group_id]"

      assert_select "input[name=?]", "training[user_id]"
    end
  end
end
