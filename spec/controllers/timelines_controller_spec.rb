require 'spec_helper'

describe TimelinesController do
  let!(:user) { User.create!(name: 'Test User') }

  def valid_params
    {
      title: 'My Event Title',
      location: 'My Event Location',
      description: 'My Event Description',
      date: Date.today,
      user_id: user.id
    }
  end

  describe 'GET show' do
    let!(:event) { Event.create!(valid_params) }

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
