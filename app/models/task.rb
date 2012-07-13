class Task < ActiveRecord::Base
  attr_accessible :desc, :done, :due, :name
  validates :name, presence: true

  def complete
    self.done = true
    self.save
  end

  def completed?
    self.done
  end
end
