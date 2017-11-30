class List < ApplicationRecord
  has_many :tasks

  def allTasks
    self.tasks
  end
end
