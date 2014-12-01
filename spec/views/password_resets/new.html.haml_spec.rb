require 'rails_helper'

RSpec.describe "password_resets/new", :type => :view do
  before(:each) do
    assign(:password_reset, PasswordReset.new(
      :user => nil,
      :token => "MyString",
      :datetime => "",
      :used => false
    ))
  end

  it "renders new password_reset form" do
    render

    assert_select "form[action=?][method=?]", password_resets_path, "post" do

      assert_select "input#password_reset_user_id[name=?]", "password_reset[user_id]"

      assert_select "input#password_reset_token[name=?]", "password_reset[token]"

      assert_select "input#password_reset_datetime[name=?]", "password_reset[datetime]"

      assert_select "input#password_reset_used[name=?]", "password_reset[used]"
    end
  end
end
