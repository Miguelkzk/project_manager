class Client < ApplicationRecord
  has_many :projets
  acts_as_paranoid
end
