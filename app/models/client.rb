class Client < ApplicationRecord
  has_many :projets, dependent: :nullify
end
