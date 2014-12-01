require 'rails_helper'

RSpec.describe "experiences/new", :type => :view do
  before(:each) do
    assign(:experience, Experience.new(
      :title => "MyString",
      :description => "MyText",
      :javascript => "MyText",
      :subcategory => nil
    ))
  end

  it "renders new experience form" do
    render

    assert_select "form[action=?][method=?]", experiences_path, "post" do

      assert_select "input#experience_title[name=?]", "experience[title]"

      assert_select "textarea#experience_description[name=?]", "experience[description]"

      assert_select "textarea#experience_javascript[name=?]", "experience[javascript]"

      assert_select "input#experience_subcategory_id[name=?]", "experience[subcategory_id]"
    end
  end
end
