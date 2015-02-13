require 'rails_helper'

RSpec.describe "serverpvs/index", :type => :view do
  before(:each) do
    assign(:serverpvs, [
      Serverpv.create!(
        :name => "Name",
        :key => "Key",
        :duration => "Duration",
        :value => 1,
        :date => "2015-02-12 12:00"
      ),
      Serverpv.create!(
        :name => "Name",
        :key => "Key",
        :duration => "Duration",
        :value => 1,
        :date => "2015-02-12 12:00"
      )
    ])

    assign(:serverpvs, Serverpv.all.paginate(:page => 1))
  end

  it "renders a list of serverpvs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
