When /^a user creates a task$/ do
  @todo = Task.new({:name => 'do stuff', :desc => 'Make sure it gets done'})
end

Then /^it should be saved in the database$/ do
  @todo.save
end
