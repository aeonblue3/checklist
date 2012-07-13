Feature: User can interact with tasks
	
	Scenario: User can complete a task
		Given there are one available tasks
		When I complete the task
		Then the done state should be true

	Scenario: User can delete a task
		Given there are one available tasks
		When I delete the task
		Then the task should be removed from the system

	Scenario: User can edit a task
		Given a task called "Take out trash"
		When I edit the name of the task to "Take out trash man"
		And save the task
		Then I should see the new task named "Take out trash man"
