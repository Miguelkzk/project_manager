class Projet < ApplicationRecord
  # Relations
  belongs_to :product
  belongs_to :client
  belongs_to :work_team, optional: true
  has_many :sprints

  # Validates
  validates :product, presence: true
  validates :client, presence: true

  # enums
  enum status: {
    created: 0,
    started: 1,
    in_progress: 2,
    suspended: 3,
    finalized: 4
  }
end
