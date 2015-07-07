require 'rails_helper'

RSpec.describe "tournaments/edit", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :name => "Fifa 2015",
      :start_date => "07/07/2015",
      :end_date => "07/07/2015"
    ))
  end

  it "renders the edit tournament form" do
    render

    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"
    end
  end
end
