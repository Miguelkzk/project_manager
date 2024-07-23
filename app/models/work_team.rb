class WorkTeam < ApplicationRecord
  has_many :projets, dependent: :nullify # de igual manera que clients
  has_many :workteam_members
  has_many :members, through: :workteam_members
  acts_as_paranoid
end
