class Event < ActiveRecord::Base
  belongs_to :user

  enum privacy_status: [ :only_me, :invite, :everyone ]
end
