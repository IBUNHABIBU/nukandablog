require 'rails_helper'

RSpec.describe "ourservices/new", type: :view do
  before(:each) do
    assign(:ourservice, Ourservice.new(
      Title: "MyString",
      description: "MyText"
    ))
  end

  it "renders new ourservice form" do
    render

    assert_select "form[action=?][method=?]", ourservices_path, "post" do

      assert_select "input[name=?]", "ourservice[Title]"

      assert_select "textarea[name=?]", "ourservice[description]"
    end
  end
end
