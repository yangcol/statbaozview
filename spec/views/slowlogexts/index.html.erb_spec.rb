require 'rails_helper'

RSpec.describe "slowlogexts/index", :type => :view do
  before(:each) do
    assign(:slowlogexts, [
      Slowlogext.create!(
        :name => "Name",
        :key => "Key",
        :duration => "Duration",
        :value => "MyText"
      ),
      Slowlogext.create!(
        :name => "Name",
        :key => "Key",
        :duration => "Duration",
        :value => "MyText"
      )
    ])
  end

  it "renders a list of slowlogexts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
