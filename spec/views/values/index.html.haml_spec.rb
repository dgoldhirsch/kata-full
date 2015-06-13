require 'rails_helper'

RSpec.describe "values/index", type: :view do
  before(:each) do
    assign(:values, [
      Value.create!(
        :name => "Name",
        :value => 1,
        :user_id => 2
      ),
      Value.create!(
        :name => "Name",
        :value => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of values" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
