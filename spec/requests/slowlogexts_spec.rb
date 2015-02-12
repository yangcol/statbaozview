require 'rails_helper'

RSpec.describe "Slowlogexts", :type => :request do
  describe "GET /slowlogexts" do
    it "works! (now write some real specs)" do
      get slowlogexts_path
      expect(response).to have_http_status(200)
    end
  end
end
