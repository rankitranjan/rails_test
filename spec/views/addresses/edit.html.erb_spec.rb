require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :user_id => 1,
      :name => "MyString",
      :line1 => "MyText",
      :lin2 => "MyText",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[user_id]"

      assert_select "input[name=?]", "address[name]"

      assert_select "textarea[name=?]", "address[line1]"

      assert_select "textarea[name=?]", "address[lin2]"

      assert_select "input[name=?]", "address[city]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[country]"

      assert_select "input[name=?]", "address[zip]"
    end
  end
end
