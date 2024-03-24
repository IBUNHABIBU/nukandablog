class HomeController < ApplicationController
  def index
    @hero_images = HeroImage.all
    @ourservices = Ourservice.all
    @partners = Partner.all
  end
end
