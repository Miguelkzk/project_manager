class Project < ApplicationRecord
  # Relations
  belongs_to :product
  belongs_to :client
  belongs_to :work_team, optional: true
  has_many :sprints

  # Validates
  validates :product, presence: true
  validates :client, presence: true

  # enums
  enum status: {
    created: 0,
    started: 1,
    in_progress: 2,
    suspended: 3,
    finalized: 4
  }

  # scopes
  scope :active_projects, -> { where(status: [statuses[:started], statuses[:in_progress]]) }

  # methods
  def start_project
    work_team = product.work_team
    if work_team
      self.work_team = work_team
      working = work_team.projets.active_projects
      self.work_team = work_team if working.length < work_team.max_projets
    else
      puts('no se encontro')
    end

  end
end