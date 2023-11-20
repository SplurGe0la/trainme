class MuscleGroup < ApplicationRecord
  enum group: [ :primary, :support, :abdominal ]

  validates :name, uniqueness: true
end
