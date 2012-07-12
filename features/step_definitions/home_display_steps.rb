When /^I am on the home page$/ do
  get root_path
end
Then /^I should see a list of tasks$/ do
  response.body.should == "Home"
end
