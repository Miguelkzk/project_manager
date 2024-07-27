class Task < ApplicationRecord
  belongs_to :sprint
  belongs_to :task_status
  has_one :workteam_member
  has_one :member, through: :work_team
end
