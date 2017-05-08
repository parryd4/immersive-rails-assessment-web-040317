class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :guest_id, :episode_id, :rating, presence: true
  validates :rating, inclusion: { in: 1..5 }
  #validates :guest_id
end
