#Author: ted.velkoff@ionep.com
#Keywords Summary : analyzer administration analysis
@analyzer
@administration
Feature: Analyzer Administration
	Operations that manage the life-cycle of a analyzer.
	An analyzer compares forcasts and actual weather and produces an evaluation of the accuracy of the forecast.

	@create
	Scenario: Create a new analyzer
		When I create a new analyzer
		Then I see a new analyzer

	@create
	Scenario: Create an analyzer that exists
		When I create an existing analyzer
		Then I see an error that the analyzer already exists

	@read
	Scenario: Read an analyzer that exists
		When I read an existing analyzer
		Then I see the properties of an existing analyzer

	@read
	Scenario: Read an analyzer that does not exist
		When I read a non-existing analyzer
		Then I see an empty result

	@update
	Scenario: Update an analyzer that exists
		When I update an existing analyzer
		Then I see the properties of an existing analyzer have changed

	@update
	Scenario: Update an analyzer that does not exist
		When I update a non-existing analyzer
		Then I see an error that the analyzer does not exist

	@delete
	Scenario: Delete an analyzer that exists
		When I delete an existing analyzer
		Then I see that the analyzer no longer exists

	@delete
	Scenario: Delete an analyzer that does not exist
		When I delete a non-existing analyzer
		Then I see an error that the analyzer does not exist

