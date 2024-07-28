class Member < ApplicationRecord
  # relations
  has_many :workteam_members
  has_many :work_teams, through: :workteam_members
  has_many :roles, through: :workteam_members
  has_many :sprints, through: :workteam_members
  has_many :tasks, through: :workteam_members
  acts_as_paranoid
end
