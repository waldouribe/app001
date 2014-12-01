require 'rails_helper'

RSpec.describe "evaluations/new", :type => :view do
  before(:each) do
    assign(:evaluation, Evaluation.new(
      :experience => nil,
      :user => nil,
      :grade => 1
    ))
  end

  it "renders new evaluation form" do
    render

    assert_select "form[action=?][method=?]", evaluations_path, "post" do

      assert_select "input#evaluation_experience_id[name=?]", "evaluation[experience_id]"

      assert_select "input#evaluation_user_id[name=?]", "evaluation[user_id]"

      assert_select "input#evaluation_grade[name=?]", "evaluation[grade]"
    end
  end
end
