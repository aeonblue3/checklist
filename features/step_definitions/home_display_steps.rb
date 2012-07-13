Given /^there are one available tasks$/ do
  @task = Task.create!({:name => "Beat the rug", :desc => "beat it with a racket"})
end

Given /^a task called "(.*?)"$/ do |task_name|
  @task = Task.create!({:name => task_name, :desc => 'Another item'})
end

When /^I complete the task$/ do
  @task.complete
end

Then /^the done state should be true$/ do
  @task.completed?
end

When /^I delete the task$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^the task should be removed from the system$/ do
    pending # express the regexp above with the code you wish you had
end

When /^I edit the name of the task to "(.*?)"$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

When /^save the task$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should see the new task named "(.*?)"$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end
