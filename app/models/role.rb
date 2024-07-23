class Role < ApplicationRecord
  has_many :workteam_members
  has_many :members, through: :workteam_members

  enum name: {
    developer: 0,
    team_leader: 1,
    project_manager: 2
  }
end
