#Author: ted.velkoff@ionep.com
#Keywords Summary : region administration
@region
@administration
Feature: Region Administration
	Operations that manage the life-cycle of a region.

	@create
	Scenario: Create a new region
		When I create a new region
		Then I see a new region

	@create
	Scenario: Create a region that exists
		When I create an existing region
		Then I see an error that the region already exists

	@read
	Scenario: Read a region that exists
		When I read an existing region
		Then I see the properties of an existing region

	@read
	Scenario: Read a region that does not exist
		When I read a non-existing region
		Then I see an empty result

	@read
	Scenario: Query the cities of a region that exists
		When I query for the cities of an existing region
		Then I see the cities contained within an existing region

	@read
	Scenario: Query the cities of a region that does not exist
		When I query for the cities of a non-existing region
		Then I see an empty result

	@read
	Scenario: Query the regions of a region that exists
		When I query for the regions of an existing region
		Then I see the regions contained within an existing region

	@read
	Scenario: Query the regions of a region that does not exist
		When I query for the regions of a non-existing region
		Then I see an empty result

	@update
	Scenario: Update a region that exists
		When I update an existing region
		Then I see the properties of an existing region have changed

	@update
	Scenario: Update a region that does not exist
		When I update a non-existing region
		Then I see an error that the region does not exist

	@delete
	Scenario: Delete a region that exists
		When I delete an existing region
		Then I see that the region no longer exists

	@delete
	Scenario: Delete a region that does not exist
		When I delete a non-existing region
		Then I see an error that the region does not exist

