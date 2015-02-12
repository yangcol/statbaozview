require 'rails_helper'

RSpec.describe "slowlogexts/edit", :type => :view do
  before(:each) do
    @slowlogext = assign(:slowlogext, Slowlogext.create!(
      :name => "MyString",
      :key => "MyString",
      :duration => "MyString",
      :value => "MyText"
    ))
  end

  it "renders the edit slowlogext form" do
    render

    assert_select "form[action=?][method=?]", slowlogext_path(@slowlogext), "post" do

      assert_select "input#slowlogext_name[name=?]", "slowlogext[name]"

      assert_select "input#slowlogext_key[name=?]", "slowlogext[key]"

      assert_select "input#slowlogext_duration[name=?]", "slowlogext[duration]"

      assert_select "textarea#slowlogext_value[name=?]", "slowlogext[value]"
    end
  end
end
