require 'spec_helper'

describe EventsController do
  def valid_params
    {
      title: 'My Event Title',
      location: 'My Event Location',
      description: 'My Event Description'
    }
  end

  def invalid_params
    {
      title: ''
    }
  end

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

  describe 'POST create' do
    describe 'when params are valid' do
      it 'creates a new event' do
        expect {
          post 'create', {:event => valid_params}
        }.to change(Event, :count).by(1)
      end
    end

    describe 'when params are NOT valid' do
      xit 'stays on new form' do
        expect {
          post 'create', {:event => invalid_params }
        }.to change(Event, :count).by(0)
      end
    end
  end
end
