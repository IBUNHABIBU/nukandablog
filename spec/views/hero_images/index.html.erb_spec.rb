require 'rails_helper'

RSpec.describe "hero_images/index", type: :view do
  before(:each) do
    assign(:hero_images, [
      HeroImage.create!(),
      HeroImage.create!()
    ])
  end

  it "renders a list of hero_images" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
