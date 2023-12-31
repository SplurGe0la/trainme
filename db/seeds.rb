# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

MuscleGroup.create(name: "Chest", group: :primary)
MuscleGroup.create(name: "Back", group: :primary)
MuscleGroup.create(name: "Legs", group: :primary)

MuscleGroup.create(name: "Abdominal", group: :abdominal)

MuscleGroup.create(name: "Byceps", group: :support)
MuscleGroup.create(name: "Triceps", group: :support)
MuscleGroup.create(name: "Shoulders", group: :support)


