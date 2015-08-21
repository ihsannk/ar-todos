require_relative 'config/application'
require_relative 'app/models/task'

require 'byebug'
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
      if Task.all.count == 0
        puts "your list is empty"
      else
        Task.list
        print "\n"
      end

    when "add"
      add_input = (@input[1..-1]).join(" ")
      puts "appended " + "'#{add_input}' " + "to your TODO list"
      Task.add(@input[1..-1].join(" "))
      Task.list
      print "\n"

    when "delete"
      puts "deleted #{@input[1]} from your TODO list"
      if @input[1] == "all"
        Task.delete_all
      else
        Task.delete(@input[1])
        Task.list
        print "\n"
      end

    when "done"
      puts "marked #{@input[1]} in your TODO list"
      Task.mark_done(@input[1])
      Task.list
      print "\n"

    else
      puts "Wrong input, please key in 'list', 'add', 'delete', 'done'"
    end
  end
end


Todo.start
