class Client < ApplicationRecord
  has_many :projets, dependent: :nullify # nullify en conjunto con las validates en project me permite que cuando se borre un projet no se me borren los clients 
  acts_as_paranoid
end
