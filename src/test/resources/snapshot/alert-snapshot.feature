#Author: ted.velkoff@ionep.com
#Keywords Summary : alert snapshot
@alert
@streaming
Feature: Alert snapshots
	Operations that query for snapshots of alerts.

	@query
	Scenario: Query for snapshot of alerts for a city by city name for a city that exists
		When I query for snapshot of alerts for a city by name
		And The city exists
		Then I see a snapshot of alerts for the city

	@query
	Scenario: Query for snapshot of alerts for a city by city name for a city that does not exist
		When I query for snapshot of alerts for a city by name
		And The city does not exist
		Then I see an error that the city does not exist

	@query
	Scenario: Query for snapshot of alerts for a city by city ID for a city that exists
		When I query for snapshot of alerts for a city by ID
		And The city exists
		Then I see a snapshot of alerts for the city

	@query
	Scenario: Query for snapshot of alerts for a city by city ID for a city that does not exist
		When I query for snapshot of alerts for a city by ID
		And The city does not exist
		Then I see an error that the city does not exist

	@query
	Scenario: Query for snapshot of alerts for a city by zip code for a city that exists
		When I query for snapshot of alerts for a city by zip code
		And The city exists
		Then I see a snapshot of alerts for the city

	@query
	Scenario: Query for snapshot of alerts for a city by zip code for a city that does not exist
		When I query for snapshot of alerts for a city by zip code
		And The city does not exist
		Then I see an error that the city does not exist

	@query
	Scenario: Query for snapshot of alerts for a region by region name for a region that exists
		When I query for snapshot of alerts for a region by name
		And The region exists
		Then I see snapshots of alerts for the region

	@query
	Scenario: Query for snapshot of alerts for a region by region name for a region that does not exist
		When I query for snapshot of alerts for a region by name
		And The region does not exist
		Then I see an error that the region does not exist

