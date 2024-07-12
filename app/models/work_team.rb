class WorkTeam < ApplicationRecord
  has_many :projets, dependent: :nullify
  has_many :workteam_members
  has_many :members, through: :workteam_members
end
