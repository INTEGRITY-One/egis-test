#Author: ted.velkoff@ionep.com
#Keywords Summary : interpolator administration interpolation
@interpolator
@administration
Feature: Interpolator Administration
	Operations that manage the life-cycle of a interpolator.

	@create
	Scenario: Create a new interpolator
		When I create a new interpolator
		Then I see a new interpolator

	@create
	Scenario: Create a interpolator that exists
		When I create an existing interpolator
		Then I see an error that the interpolator already exists

	@read
	Scenario: Read a interpolator that exists
		When I read an existing interpolator
		Then I see the properties of an existing interpolator

	@read
	Scenario: Read a interpolator that does not exist
		When I read a non-existing interpolator
		Then I see an empty result

	@update
	Scenario: Update a interpolator that exists
		When I update an existing interpolator
		Then I see the properties of an existing interpolator have changed

	@update
	Scenario: Update a interpolator that does not exist
		When I update a non-existing interpolator
		Then I see an error that the interpolator does not exist

	@delete
	Scenario: Delete a interpolator that exists
		When I delete an existing interpolator
		Then I see that the interpolator no longer exists

	@delete
	Scenario: Delete a interpolator that does not exist
		When I delete a non-existing interpolator
		Then I see an error that the interpolator does not exist

