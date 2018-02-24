require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :user_id => 2,
        :name => "Name",
        :line1 => "MyText",
        :lin2 => "MyText",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip"
      ),
      Address.create!(
        :user_id => 2,
        :name => "Name",
        :line1 => "MyText",
        :lin2 => "MyText",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
