require_relative '../app/models/task'

require 'faker'

module TaskImporter
  def self.import
    10.times do
      Task.create(
        :task => Faker::Lorem.sentence
     )
     end
  end
end