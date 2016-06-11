Feature: Viewer visits the Age Page
  	As a viewer
  	I want to see the age page of my app
  	In order to enter my age
  	
  	Scenario: Get age
    	Given I am on "/"
    	When I fill in "user_name" with "Aaron"
    	And I click "submit"
    	And I fill in "user_age" with "20"
    	And I click "submit"
    	Then I should see "Aaron, your age is 20. Now enter your 3 favorite numbers."

  	Scenario: Get age directly
    	Given I am on "/age" with query "?name=Aaron"
    	And I fill in "user_age" with "20"
    	And I click "submit"
    	Then I should see "Aaron, your age is 20. Now enter your 3 favorite numbers."