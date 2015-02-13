require 'rails_helper'

RSpec.describe "Serverpvs", :type => :request do
  describe "GET /serverpvs" do
    it "works! (now write some real specs)" do
      get serverpvs_path
      expect(response).to have_http_status(200)
    end
  end
end
