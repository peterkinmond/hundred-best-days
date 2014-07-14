class Event < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :location
  validates_presence_of :date
  validates_presence_of :user

  enum privacy_status: [ :only_me, :invite, :everyone ]
end
