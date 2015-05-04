class Logentry < ActiveRecord::Base
  belongs_to :wine

  RATING = 1..5

  validates :name, :comment, presence: true
  validates :comment, length: {minimum: 15}, unless: 'comment.blank?'
  validates :rating, inclusion: { in: RATING, message: "must be from #{RATING.first} to #{RATING.last}"}

end
