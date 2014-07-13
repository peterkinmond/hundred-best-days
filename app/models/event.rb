class Event < ActiveRecord::Base
  validates_presence_of :title

  belongs_to :user

  enum privacy_status: [ :only_me, :invite, :everyone ]
end
