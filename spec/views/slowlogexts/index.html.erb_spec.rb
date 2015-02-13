require 'rails_helper'

RSpec.describe "slowlogexts/index", :type => :view do
  before(:each) do
    assign(:slowlogexts, [
      Slowlogext.create!(
        :name => "Name",
        :key => "Key",
        :duration => "Duration",
        :date => "2015-01-21 14:29:00",
        :value => "MyText"
      ),
      Slowlogext.create!(
        :name => "Name",
        :key => "Key",
        :duration => "Duration",
        :date => "2015-01-21 14:29:00",
        :value => "MyText"
      )
    ])
    assign(:slowlogexts, Slowlogext.all.paginate(:page=>1))
  end

  it "renders a list of slowlogexts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
