require 'rails_helper'

RSpec.describe "serverpvs/show", :type => :view do
  before(:each) do
    @serverpv = assign(:serverpv, Serverpv.create!(
      :name => "Name",
      :key => "Key",
      :duration => "Duration",
      :value => 1,
      :date => "2015-02-12 12:00"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Key/)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/1/)
  end
end
