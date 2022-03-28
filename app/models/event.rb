class Event < ApplicationRecord
  validates :title, presence: true, length: { in: 2..30 }
  validates :description, length: { maximum: 320 }

  has_many :invites
  has_many :attendees, through: :invites
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  scope :past, -> { where('date < ?', Date.today) }
  scope :future, -> { where('date >= ?', Date.today) }
end
