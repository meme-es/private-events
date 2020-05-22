class User < ApplicationRecord
  has_many :events
  has_many :attendances, foreign_key: :user_id
  has_many :attended_events, through: :attendances
end
