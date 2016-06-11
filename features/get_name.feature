Feature: Viewer visits the Entry Page
	As a viewer
	I want to see the entry page of my app
	In order to start the app
	  
	Scenario: View entry page
		Given I am on "/"
	    Then I should see "What is your name?"

	Scenario: Get name
	  	Given I am on "/"
	  	When I fill in "user_name" with "Aaron"
	  	And I click "submit"
	  	Then I should see "Hello Aaron, what is your age?"