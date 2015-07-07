require 'rails_helper'

RSpec.describe "tournaments/new", type: :view do
  before(:each) do
    assign(:tournament, Tournament.new(
      :name => "Fifa 2015",
      :start_date => Date.today,
      :end_date => Date.today
    ))
  end

  it "renders new tournament form" do
    render

    assert_select "form[action=?][method=?]", tournaments_path, "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"
    end
  end
end
