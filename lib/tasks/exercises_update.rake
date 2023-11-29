namespace :exercises do
  task update: :environment do
    muscle_groups = MuscleGroup.pluck(:name, :id).to_h

    File.open('public/exercises.csv') do |file|
      file.readlines.each do |line|
        info = line.chomp.split(';')

        Exercise.create(title: info[0], desc: info[1], muscle_group_id: muscle_groups[info[2]])
      end
    end
  end
end