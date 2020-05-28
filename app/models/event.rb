class Event < ApplicationRecord
  validates :title, :description, :date, :location, presence: true
  validates :description, length: { minimum: 10, maximum: 250 }

  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :attendances, foreign_key: :event_id
  has_many :attendees, through: :attendances, source: :attendee

  scope :upcoming, -> { where('date >= ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }
end
