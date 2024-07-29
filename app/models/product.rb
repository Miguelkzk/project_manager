class Product < ApplicationRecord
  # relations
  has_many :projects
  belongs_to :work_team, optional: true

  acts_as_paranoid
end
