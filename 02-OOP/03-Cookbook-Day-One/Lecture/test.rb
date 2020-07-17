require 'awesome_print'
require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'router'

t1 = Task.new('faire le ménage')
t2 = Task.new('partir en vacances')

t2.mark_as_done!

repo = TaskRepository.new

repo.add(t1)
repo.add(t2)

controller = TasksController.new(repo)

router = Router.new(controller)
router.run
