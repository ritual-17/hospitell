require "rails_helper"

RSpec.describe HospitalDepartmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/hospital_departments").to route_to("hospital_departments#index")
    end

    it "routes to #new" do
      expect(get: "/hospital_departments/new").to route_to("hospital_departments#new")
    end

    it "routes to #show" do
      expect(get: "/hospital_departments/1").to route_to("hospital_departments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/hospital_departments/1/edit").to route_to("hospital_departments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/hospital_departments").to route_to("hospital_departments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/hospital_departments/1").to route_to("hospital_departments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/hospital_departments/1").to route_to("hospital_departments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/hospital_departments/1").to route_to("hospital_departments#destroy", id: "1")
    end
  end
end
