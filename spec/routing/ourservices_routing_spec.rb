require "rails_helper"

RSpec.describe OurservicesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ourservices").to route_to("ourservices#index")
    end

    it "routes to #new" do
      expect(get: "/ourservices/new").to route_to("ourservices#new")
    end

    it "routes to #show" do
      expect(get: "/ourservices/1").to route_to("ourservices#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ourservices/1/edit").to route_to("ourservices#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ourservices").to route_to("ourservices#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ourservices/1").to route_to("ourservices#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ourservices/1").to route_to("ourservices#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ourservices/1").to route_to("ourservices#destroy", id: "1")
    end
  end
end
