require 'rails_helper'

RSpec.describe "partners/new", type: :view do
  before(:each) do
    assign(:partner, Partner.new(
      title: "MyString",
      user: nil
    ))
  end

  it "renders new partner form" do
    render

    assert_select "form[action=?][method=?]", partners_path, "post" do

      assert_select "input[name=?]", "partner[title]"

      assert_select "input[name=?]", "partner[user_id]"
    end
  end
end
