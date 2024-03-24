require 'rails_helper'

RSpec.describe "hero_images/show", type: :view do
  before(:each) do
    assign(:hero_image, HeroImage.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
