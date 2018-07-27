require_relative 'todolist'

task1 = Task.new('August 1, 2018', 'Make lunch for the week')
task2 = Task.new('August 3, 2018', 'Clean your room')
task3 = Task.new('August 7, 2018', 'Buy groceries')

list1 = TodoList.new
list1.add(task1)
list1.add(task2)
list1.add(task3)

p list1.show
