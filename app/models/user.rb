class User < ApplicationRecord
  has_many :events
  has_many :attended_events, through: :attendances, class_name: 'Event', foreign_key: 'event_id'
end
