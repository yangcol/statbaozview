require 'rails_helper'

RSpec.describe "slowlogexts/show", :type => :view do
  before(:each) do
    @slowlogext = assign(:slowlogext, Slowlogext.create!(
      :name => "Name",
      :key => "Key",
      :duration => "Duration",
      :value => "MyText",
      :date => "2015-01-21 14:29:00"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Key/)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/MyText/)
  end
end
