class WorkTeam < ApplicationRecord
  # relations
  has_many :projets
  has_many :workteam_members
  has_many :members, through: :workteam_members
  has_many :products
  acts_as_paranoid
end
