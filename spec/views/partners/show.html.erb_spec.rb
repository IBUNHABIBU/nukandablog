require 'rails_helper'

RSpec.describe "partners/show", type: :view do
  before(:each) do
    assign(:partner, Partner.create!(
      title: "Title",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
