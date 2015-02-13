require 'rails_helper'

RSpec.describe "serverpvs/new", :type => :view do
  before(:each) do
    assign(:serverpv, Serverpv.new(
      :name => "MyString",
      :key => "MyString",
      :duration => "MyString",
      :value => 1,
      :date => "2015-02-12 12:00"
    ))
  end

  it "renders new serverpv form" do
    render

    assert_select "form[action=?][method=?]", serverpvs_path, "post" do

      assert_select "input#serverpv_name[name=?]", "serverpv[name]"

      assert_select "input#serverpv_key[name=?]", "serverpv[key]"

      assert_select "input#serverpv_duration[name=?]", "serverpv[duration]"

      assert_select "input#serverpv_value[name=?]", "serverpv[value]"
    end
  end
end
