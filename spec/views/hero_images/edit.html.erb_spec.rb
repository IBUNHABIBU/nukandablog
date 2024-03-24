require 'rails_helper'

RSpec.describe "hero_images/edit", type: :view do
  let(:hero_image) {
    HeroImage.create!()
  }

  before(:each) do
    assign(:hero_image, hero_image)
  end

  it "renders the edit hero_image form" do
    render

    assert_select "form[action=?][method=?]", hero_image_path(hero_image), "post" do
    end
  end
end
