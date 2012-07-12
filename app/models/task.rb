class Task < ActiveRecord::Base
  attr_accessible :desc, :done, :due, :name
end
