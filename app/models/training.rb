class Training < ApplicationRecord
  belongs_to :primary_group, class_name: "MuscleGroup"
  belongs_to :support_group, class_name: "MuscleGroup"
  belongs_to :user

  enum format: [ :classic, :twin, :circle ]
  enum state: [ :created, :started, :closed ]
end
