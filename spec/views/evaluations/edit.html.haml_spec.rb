require 'rails_helper'

RSpec.describe "evaluations/edit", :type => :view do
  before(:each) do
    @evaluation = assign(:evaluation, Evaluation.create!(
      :experience => nil,
      :user => nil,
      :grade => 1
    ))
  end

  it "renders the edit evaluation form" do
    render

    assert_select "form[action=?][method=?]", evaluation_path(@evaluation), "post" do

      assert_select "input#evaluation_experience_id[name=?]", "evaluation[experience_id]"

      assert_select "input#evaluation_user_id[name=?]", "evaluation[user_id]"

      assert_select "input#evaluation_grade[name=?]", "evaluation[grade]"
    end
  end
end
