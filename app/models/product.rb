class Product < ApplicationRecord
  has_many :projets, dependent: :nullify # de igual manera que clients
  acts_as_paranoid

end
