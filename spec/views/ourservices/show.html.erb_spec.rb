require 'rails_helper'

RSpec.describe "ourservices/show", type: :view do
  before(:each) do
    assign(:ourservice, Ourservice.create!(
      Title: "Title",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
