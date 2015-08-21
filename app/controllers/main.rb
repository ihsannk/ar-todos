require 'active_record'
require_relative '../app/models/task'

class Todo
  def self.start
    @input = ARGV
    option
  end

  def self.option
    case @input[0]
    when "list"
      Task.list
    when "add"
      puts "appended #{@input[1..-1]join(" ")} to your TODO list"
      Task.add(@input[1..-1].join(" "))
    when "delete"
      puts "deleted #{task: @input[1]} from your TODO list"
      Task.delete(@input[1])
    when "done"
      Task.done(@input[1])
    else
      puts "Wrong input, please key in 'list', 'add', 'delete', 'done'"
    end
  end
end


Todo.start
puts "testing"