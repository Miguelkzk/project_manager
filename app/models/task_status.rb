class TaskStatus < ApplicationRecord
  has_many :tasks
  acts_as_paranoid
end
