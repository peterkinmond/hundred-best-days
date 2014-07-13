require 'spec_helper'

describe EventsController do
  let!(:user) { User.create!(name: 'Test User') }

  def valid_params
    {
      title: 'My Event Title',
      location: 'My Event Location',
      description: 'My Event Description',
      date: 'My Event Date',
      user_id: user.id
    }
  end

  def invalid_params
    {
      title: ''
    }
  end

  describe 'GET show' do
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
      it "doesn't create a new event" do
        expect {
          post 'create', {:event => invalid_params }
        }.to change(Event, :count).by(0)
      end

      it 'stays on new form' do
        post 'create', {:event => invalid_params }
        expect(response).to render_template('new')
      end
    end
  end
end
