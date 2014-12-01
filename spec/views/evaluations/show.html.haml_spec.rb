require 'rails_helper'

RSpec.describe "evaluations/show", :type => :view do
  before(:each) do
    @evaluation = assign(:evaluation, Evaluation.create!(
      :experience => nil,
      :user => nil,
      :grade => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
