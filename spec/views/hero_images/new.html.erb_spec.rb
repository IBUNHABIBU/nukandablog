require 'rails_helper'

RSpec.describe "hero_images/new", type: :view do
  before(:each) do
    assign(:hero_image, HeroImage.new())
  end

  it "renders new hero_image form" do
    render

    assert_select "form[action=?][method=?]", hero_images_path, "post" do
    end
  end
end
