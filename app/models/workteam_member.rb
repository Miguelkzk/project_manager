class WorkteamMember < ApplicationRecord
  belongs_to :work_team
  belongs_to :member
  belongs_to :role
end
