require 'rails_helper'

RSpec.describe "values/new", type: :view do
  before(:each) do
    assign(:value, Value.new(
      :name => "MyString",
      :value => 1,
      :user_id => 1
    ))
  end

  it "renders new value form" do
    render

    assert_select "form[action=?][method=?]", values_path, "post" do

      assert_select "input#value_name[name=?]", "value[name]"

      assert_select "input#value_value[name=?]", "value[value]"

      assert_select "input#value_user_id[name=?]", "value[user_id]"
    end
  end
end
