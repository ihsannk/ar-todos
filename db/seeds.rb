require_relative '../app/models/task'

require 'faker'

class TaskImporter
  def self.import
    3.times do
      Task.create(
        :task => Faker::Lorem.sentence
     )
     end
  end
end

TaskImporter.import