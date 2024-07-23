class Member < ApplicationRecord
  has_many :workteam_members
  has_many :work_teams, through: :workteam_members
  has_many :roles, through: :workteam_members
end
