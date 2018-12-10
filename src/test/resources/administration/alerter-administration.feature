#Author: ted.velkoff@ionep.com
#Keywords Summary : alerter administration alert
@alerter
@administration
Feature: Alerter Administration
	Operations that manage the life-cycle of a alerter.
	An alerter generates weather alerts for a city (or region?).

	@create
	Scenario: Create a new alerter
		When I create a new alerter
		Then I see a new alerter

	@create
	Scenario: Create an alerter that exists
		When I create an existing alerter
		Then I see an error that the alerter already exists

	@read
	Scenario: Read an alerter that exists
		When I read an existing alerter
		Then I see the properties of an existing alerter

	@read
	Scenario: Read an alerter that does not exist
		When I read a non-existing alerter
		Then I see an empty result

	@update
	Scenario: Update an alerter that exists
		When I update an existing alerter
		Then I see the properties of an existing alerter have changed

	@update
	Scenario: Update an alerter that does not exist
		When I update a non-existing alerter
		Then I see an error that the alerter does not exist

	@delete
	Scenario: Delete an alerter that exists
		When I delete an existing alerter
		Then I see that the alerter no longer exists

	@delete
	Scenario: Delete an alerter that does not exist
		When I delete a non-existing alerter
		Then I see an error that the alerter does not exist

