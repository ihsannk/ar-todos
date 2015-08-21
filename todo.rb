require_relative 'config/application'
require_relative '../app/models/task'
# puts "Put your application code in #{File.expand_path(__FILE__)}"

require 'active_record'


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
      Task.add(@input[1..-1].join(" "))
    when "delete"
      Task.delete(@input[1])
    when "done"
      Task.done(@input[1])
    else
      puts "Wrong input, please key in 'list', 'add', 'delete', 'done'"
    end
  end
end


Todo.start
