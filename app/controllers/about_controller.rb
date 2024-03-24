class AboutController < ApplicationController
  def index
    @hero_images = HeroImage.all.limit(2)
  end
end
