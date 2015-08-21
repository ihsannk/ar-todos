class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :done, :default => "[ ]"

      t.timestamps null: false
    end
  end
end