class Task
  attr_accessor :due_date, :description
  def initialize(due_date, description)
    @due_date = due_date
    @description = description
  end
end
