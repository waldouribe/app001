require 'rails_helper'

RSpec.describe "password_resets/index", :type => :view do
  before(:each) do
    assign(:password_resets, [
      PasswordReset.create!(
        :user => nil,
        :token => "Token",
        :datetime => "",
        :used => false
      ),
      PasswordReset.create!(
        :user => nil,
        :token => "Token",
        :datetime => "",
        :used => false
      )
    ])
  end

  it "renders a list of password_resets" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
