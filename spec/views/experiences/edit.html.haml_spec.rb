require 'rails_helper'

RSpec.describe "experiences/edit", :type => :view do
  before(:each) do
    @experience = assign(:experience, Experience.create!(
      :title => "MyString",
      :description => "MyText",
      :javascript => "MyText",
      :subcategory => nil
    ))
  end

  it "renders the edit experience form" do
    render

    assert_select "form[action=?][method=?]", experience_path(@experience), "post" do

      assert_select "input#experience_title[name=?]", "experience[title]"

      assert_select "textarea#experience_description[name=?]", "experience[description]"

      assert_select "textarea#experience_javascript[name=?]", "experience[javascript]"

      assert_select "input#experience_subcategory_id[name=?]", "experience[subcategory_id]"
    end
  end
end
