require 'rails_helper'

RSpec.describe "slowlogexts/new", :type => :view do
  before(:each) do
    assign(:slowlogext, Slowlogext.new(
      :name => "MyString",
      :key => "MyString",
      :duration => "MyString",
      :value => "MyText"
    ))
  end

  it "renders new slowlogext form" do
    render

    assert_select "form[action=?][method=?]", slowlogexts_path, "post" do

      assert_select "input#slowlogext_name[name=?]", "slowlogext[name]"

      assert_select "input#slowlogext_key[name=?]", "slowlogext[key]"

      assert_select "input#slowlogext_duration[name=?]", "slowlogext[duration]"

      assert_select "textarea#slowlogext_value[name=?]", "slowlogext[value]"
    end
  end
end
