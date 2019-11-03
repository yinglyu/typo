Feature: Edit categories
  
As an administrator
In order to create and maintain blog categories
I should be able to create new categories and view and edit existing categories

Background:
    Given the blog is set up
	And I am logged into the admin panel

Scenario: Creating a new category
  
  Given I am on the admin page
  And I go to the new category page
  Then I should see "Categories"
  When I fill in "Name" with "Swim"
  And I fill in "Keywords" with "Freestyle"
  And I fill in "Permalink" with "Test Permalink"
  And I fill in "Description" with "Water Sports"
  And I press "Save"
  Then I should see "Category was successfully saved"
  And I should see "Swim"
  And I should see "Freestyle"
  And I should see "Test Permalink"
  And I should see "Water Sports"