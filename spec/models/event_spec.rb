require 'spec_helper'

describe Event do
  it { should belong_to(:user) }

  describe "#range_of_years" do
    it "returns array with years from earliest event until present" do
      event = Event.create(date: Time.now - 2.years, title: "Test Event")
      events = [event]
      expect(Event.range_of_years(events)).to eq([2012, 2013, 2014])
    end
  end
end
