require 'rails_helper'

RSpec.describe "users/edit", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :authentication_token => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"

      assert_select "input#user_authentication_token[name=?]", "user[authentication_token]"
    end
  end
end
