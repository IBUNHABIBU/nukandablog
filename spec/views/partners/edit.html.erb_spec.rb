require 'rails_helper'

RSpec.describe "partners/edit", type: :view do
  let(:partner) {
    Partner.create!(
      title: "MyString",
      user: nil
    )
  }

  before(:each) do
    assign(:partner, partner)
  end

  it "renders the edit partner form" do
    render

    assert_select "form[action=?][method=?]", partner_path(partner), "post" do

      assert_select "input[name=?]", "partner[title]"

      assert_select "input[name=?]", "partner[user_id]"
    end
  end
end
