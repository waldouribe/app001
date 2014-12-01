require 'rails_helper'

RSpec.describe "experiences/index", :type => :view do
  before(:each) do
    assign(:experiences, [
      Experience.create!(
        :title => "Title",
        :description => "MyText",
        :javascript => "MyText",
        :subcategory => nil
      ),
      Experience.create!(
        :title => "Title",
        :description => "MyText",
        :javascript => "MyText",
        :subcategory => nil
      )
    ])
  end

  it "renders a list of experiences" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
