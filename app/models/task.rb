class Task < ApplicationRecord
  belongs_to :sprint
  belongs_to :task_status
  has_many :workteam_members
  has_many :members, through: :workteam_members
end
