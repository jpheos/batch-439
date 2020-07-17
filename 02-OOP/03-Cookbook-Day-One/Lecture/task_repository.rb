class TaskRepository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def delete(index)
    @tasks.delete_at(index)
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end
end
