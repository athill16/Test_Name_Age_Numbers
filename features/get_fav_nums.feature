Feature: Viewer visits the Numbers Page
  	As a viewer
  	I want to see the favorite numbers page of my app
  	In order to enter my three favorite numbers

  	Scenario: Get favorite numbers
    	Given I am on "/"
    	When I fill in "user_name" with "Aaron"
    	And I click "submit"
    	And I fill in "user_age" with "20"
    	And I click "submit"
    	And I fill in "user_fav_number1" with "10"
    	And I fill in "user_fav_number2" with "11"
    	And I fill in "user_fav_number3" with "12"
    	And I click "submit"
    	Then I should see "Ok, Aaron, the sum of 10, 11 & 12 is 33.\n<br>\nSum is greater than age."

    Scenario: Get favorite numbers directly
    	Given I am on "/favnums" with query "?name=Aaron&age=20"
    	And I fill in "user_fav_number1" with "10"
    	And I fill in "user_fav_number2" with "11"
    	And I fill in "user_fav_number3" with "12"
    	And I click "submit"
    	Then I should see "Ok, Aaron, the sum of 10, 11 & 12 is 33.\n<br>\nSum is greater than age."


