class Task < ActiveRecord::Base
  attr_accessible :desc, :done, :due, :name
  validates :name, presence: true

  def self.complete
    this.done = true
  end
end
