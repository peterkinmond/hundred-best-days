require 'spec_helper'

describe EventsController do
  describe 'GET show' do
    let!(:user) { User.create!(name: 'Test User') }
    let!(:event) { Event.create!(user: user, title: 'Fake event') }

    it 'sets event to chosen event' do
      get 'show', id: event.id
      expect(assigns(:event)).to eq(event)
    end
  end

  describe 'GET new' do
    it 'works' do
      get 'new'
      expect(response).to be_success
    end
  end
end
