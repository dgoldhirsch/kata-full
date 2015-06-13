require 'rails_helper'

RSpec.describe "values/edit", type: :view do
  before(:each) do
    @value = assign(:value, Value.create!(
      :name => "MyString",
      :value => 1,
      :user_id => 1
    ))
  end

  it "renders the edit value form" do
    render

    assert_select "form[action=?][method=?]", value_path(@value), "post" do

      assert_select "input#value_name[name=?]", "value[name]"

      assert_select "input#value_value[name=?]", "value[value]"

      assert_select "input#value_user_id[name=?]", "value[user_id]"
    end
  end
end
