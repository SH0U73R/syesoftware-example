require 'rails_helper'

RSpec.describe "tournaments/index", type: :view do
  before(:each) do
    assign(:tournaments, [
      Tournament.create!(
        :name => "Name",
        :start_date => "07/07/2015",
        :end_date => "07/07/2015"
      ),
      Tournament.create!(
        :name => "Name",
        :start_date => "07/07/2015",
        :end_date => "07/07/2015"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "2015-07-07".to_s, :count => 4
    assert_select "tr>td", :text => "2015-07-07".to_s, :count => 4
  end
end
