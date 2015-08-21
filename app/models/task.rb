class Task < ActiveRecord::Base
  self.inheritance_column = :task

  def list
    list = Task.all
     list.each do |l|
      puts "#{l.id}. #{l.task}"
        if l.completed == 1
          print "done"
        else
          print " "
        end
     end
  end

  def self.add(task)
    Task.create(task: task)
  end

  def self.delete(id)
    Task.destroy_all(id: id)
  end

  def done(id)
    task = Task.find(id)
    task.completed = 1
    task.save
  end

end

