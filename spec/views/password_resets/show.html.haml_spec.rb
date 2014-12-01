require 'rails_helper'

RSpec.describe "password_resets/show", :type => :view do
  before(:each) do
    @password_reset = assign(:password_reset, PasswordReset.create!(
      :user => nil,
      :token => "Token",
      :datetime => "",
      :used => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Token/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
