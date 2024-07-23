class Projet < ApplicationRecord
  belongs_to :product
  belongs_to :client
  belongs_to :work_team, optional: true

  validates :product, presence: true
  validates :client, presence: true

  enum status: {
    created: 0,
    started: 1,
    in_progress: 2,
    suspended: 3,
    finalized: 4
  }
end
