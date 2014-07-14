require 'spec_helper'

describe Event do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:date) }
  it { should belong_to(:user) }
end
