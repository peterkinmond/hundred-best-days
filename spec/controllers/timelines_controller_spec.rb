require 'spec_helper'

describe TimelinesController do
  describe 'GET show' do
    it "sets user's events to @events" do
      get 'show'
      expect(response).to be_success
    end
  end
end
