class Sprint < ApplicationRecord
  belongs_to :projet
  has_many :tasks
  has_many :workteam_members
  has_many :members, through: :workteam_members
end
