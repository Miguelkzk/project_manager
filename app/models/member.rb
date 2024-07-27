class Member < ApplicationRecord
  has_many :workteam_members, optional: true
  has_many :work_teams, through: :workteam_members
  has_many :roles, through: :workteam_members
  has_many :sprints, through: :workteam_members
  has_one :task, through: :workteam_member
  acts_as_paranoid
end
