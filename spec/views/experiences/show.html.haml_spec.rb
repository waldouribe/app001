require 'rails_helper'

RSpec.describe "experiences/show", :type => :view do
  before(:each) do
    @experience = assign(:experience, Experience.create!(
      :title => "Title",
      :description => "MyText",
      :javascript => "MyText",
      :subcategory => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
