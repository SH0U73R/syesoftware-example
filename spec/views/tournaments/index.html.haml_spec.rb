require 'rails_helper'

RSpec.describe "tournaments/index", type: :view do
  before(:each) do
    assign(:tournaments, [
      Tournament.create!(
        :name => "Name",
        :start_date => Date.today,
        :end_date => Date.today
      ),
      Tournament.create!(
        :name => "Name",
        :start_date => Date.today,
        :end_date => Date.today
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => Date.today.to_s, :count => 4
    assert_select "tr>td", :text => Date.today.to_s, :count => 4
  end
end
