class Event < ApplicationRecord
  validates :name, presence: true, length: { in: 2..20 }
  validates :description, length: { maximum: 120 }

  has_many :invites
  has_many :attendees, through: :invites
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  scope :past, -> { where('date < ?', Date.today) }
  scope :future, -> { where('date >= ?', Date.today) }
end
