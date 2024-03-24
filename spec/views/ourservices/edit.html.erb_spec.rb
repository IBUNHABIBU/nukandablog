require 'rails_helper'

RSpec.describe "ourservices/edit", type: :view do
  let(:ourservice) {
    Ourservice.create!(
      Title: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:ourservice, ourservice)
  end

  it "renders the edit ourservice form" do
    render

    assert_select "form[action=?][method=?]", ourservice_path(ourservice), "post" do

      assert_select "input[name=?]", "ourservice[Title]"

      assert_select "textarea[name=?]", "ourservice[description]"
    end
  end
end
