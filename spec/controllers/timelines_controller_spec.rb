require 'spec_helper'

describe TimelinesController do
  describe 'GET show' do
    let!(:user) { User.create!(name: 'Test User') }
    let!(:event) { Event.create!(user: user, title: 'Fake event') }

    it "works" do
      allow(controller).to receive(:current_user).and_return(user)
      get 'show'
      expect(response).to be_success
    end

    it "sets events to current user's events" do
      allow(controller).to receive(:current_user).and_return(user)
      get 'show'
      expect(assigns(:events)).to eq([event])
    end
  end
end
