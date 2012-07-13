Given /^there are one available tasks$/ do
  @task = Task.create!({:name => "Beat the rug", :desc => "beat it with a racket"})
end

Given /^a task called "(.*?)"$/ do |task_name|
  @task = Task.create!({:name => task_name, :desc => 'Another item'})
end

When /^I complete the task$/ do
  @task.complete
end

When /^I edit the name of the task to "(.*?)"$/ do |new_name|
  @task.name = new_name
end

When /^save the task$/ do
  @task.save
end

Then /^the done state should be true$/ do
  @task.completed?
end

Then /^I should see the new task named "(.*?)"$/ do |new_name|
  @task.name.should == new_name
end
