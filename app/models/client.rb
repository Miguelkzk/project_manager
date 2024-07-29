class Client < ApplicationRecord
  has_many :projects
  acts_as_paranoid
end
