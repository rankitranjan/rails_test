require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :user_id => 2,
      :name => "Name",
      :line1 => "MyText",
      :lin2 => "MyText",
      :city => "City",
      :state => "State",
      :country => "Country",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Zip/)
  end
end
