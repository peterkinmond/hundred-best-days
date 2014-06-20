require 'spec_helper'

describe TimelinesController do
  describe 'GET show' do
    it "works" do
      user = User.create!(name: 'Test User')
      allow(controller).to receive(:current_user).and_return(user)
      get 'show'
      expect(response).to be_success
    end

    it "sets events to current user's events" do
      user = User.create!(name: 'Test User')
      event1 = Event.create!(user: user, title: 'Fake event')
      allow(controller).to receive(:current_user).and_return(user)
      get 'show'
      expect(assigns(:events)).to eq([event1])
    end
  end
end
