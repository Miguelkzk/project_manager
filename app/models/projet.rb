class Projet < ApplicationRecord
  belongs_to :product
  belongs_to :client
  belongs_to :work_team, optional: true
  validates :product, presence: true
  validates :client, presence: true
end
