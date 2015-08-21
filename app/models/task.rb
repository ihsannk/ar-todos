class Task < ActiveRecord::Base

  def self.list
    list = Task.all
     list.each do |l|
      puts "#{l.id}. #{l.done} #{l.task} "
      end
  end

  def self.add(task)
    Task.create(task: task)
  end

  def self.delete(id)
    Task.destroy_all(id: id)
  end

  def self.delete_all
    Task.all.destroy
  end

  def self.mark_done(id)
    task = Task.find_by(id: id)
    task.update(done: "[X]")
  end

end

