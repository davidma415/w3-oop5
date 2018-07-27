class Task
  attr_accessor :due_date, :description
  def initialize(due_date, description)
    @due_date = due_date
    @description = description
  end
end

task1 = Task.new('August 1, 2018', 'Buy more groceries')
task2 = Task.new('August 5, 2018', 'Buy more underwear')
task1.description = "Eat more vegetables"
p task1
p task2
