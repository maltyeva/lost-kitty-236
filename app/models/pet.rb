class Pet < ApplicationRecord
  validates :species, inclusion: { in: %w(dog cat rabbit ferret)}
  validates :address, presence: true

  validates :healthiness, inclusion: { in: %w(healthy unhealthy)}
end
