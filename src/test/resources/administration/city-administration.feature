#Author: ted.velkoff@ionep.com
#Keywords Summary : city administration
@city
@administration
Feature: City Administration
	Operations that manage the life-cycle of a city.

	@create
	Scenario: Create a new city
		When I create a new city
		Then I see a new city

	@create
	Scenario: Create a city that exists
		When I create an existing city
		Then I see an error that the city already exists

	@read
	Scenario: Read a city that exists
		When I read an existing city
		Then I see the properties of an existing city

	@read
	Scenario: Read a city that does not exist
		When I read a non-existing city
		Then I see an empty result

	@update
	Scenario: Update a city that exists
		When I update an existing city
		Then I see the properties of an existing city have changed

	@update
	Scenario: Update a city that does not exist
		When I update a non-existing city
		Then I see an error that the city does not exist

	@delete
	Scenario: Delete a city that exists
		When I delete an existing city
		Then I see that the city no longer exists

	@delete
	Scenario: Delete a city that does not exist
		When I delete a non-existing city
		Then I see an error that the city does not exist

