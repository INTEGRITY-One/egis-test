#Author: ted.velkoff@ionep.com
#Keywords Summary : forecaster administration forecast
@forecaster
@administration
Feature: Forecaster Administration
	Operations that manage the life-cycle of a forecaster.
	A forecaster generates forecasts for a city (or region?).
	A forecaster produces an hourly forecast (covering three days) and/or daily forecast (covering sixteen days).

	@create
	Scenario: Create a new forecaster
		When I create a new forecaster
		Then I see a new forecaster

	@create
	Scenario: Create a forecaster that exists
		When I create an existing forecaster
		Then I see an error that the forecaster already exists

	@read
	Scenario: Read a forecaster that exists
		When I read an existing forecaster
		Then I see the properties of an existing forecaster

	@read
	Scenario: Read a forecaster that does not exist
		When I read a non-existing forecaster
		Then I see an empty result

	@update
	Scenario: Update a forecaster that exists
		When I update an existing forecaster
		Then I see the properties of an existing forecaster have changed

	@update
	Scenario: Update a forecaster that does not exist
		When I update a non-existing forecaster
		Then I see an error that the forecaster does not exist

	@delete
	Scenario: Delete a forecaster that exists
		When I delete an existing forecaster
		Then I see that the forecaster no longer exists

	@delete
	Scenario: Delete a forecaster that does not exist
		When I delete a non-existing forecaster
		Then I see an error that the forecaster does not exist

