class TaskView
  def display_all(tasks)
    tasks.each_with_index do |task, i|
      done = task.done? ? 'X' : ' '
      puts "#{i + 1} - [#{done}] #{task.description}"
    end
  end

  def ask_index
    puts "index?"
    print "> "
    gets.chomp.to_i - 1
  end


  def ask_description
    puts "description?"
    print "> "
    gets.chomp
  end
end
