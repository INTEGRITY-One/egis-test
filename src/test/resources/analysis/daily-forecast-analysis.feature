#Author: ted.velkoff@ionep.com
#Keywords Summary : daily forecast analysis
@daily-forecast
@analysis
Feature: Daily forecast analysis
	Operations that query for an analysis of daily forecasts.

	@query
	Scenario: Query for an analysis of daily forecasts for a city by city name for a city that exists
		When I query for an analysis of daily forecasts for a city by name
		And The city exists
		Then I see an analysis of daily forecasts for the city

	@query
	Scenario: Query for an analysis of daily forecasts for a city by city name for a city that does not exist
		When I query for an analysis of daily forecasts for a city by name
		And The city does not exist
		Then I see an error that the city does not exist

	@query
	Scenario: Query for an analysis of daily forecasts for a city by city ID for a city that exists
		When I query for an analysis of daily forecasts for a city by ID
		And The city exists
		Then I see an analysis of daily forecasts for the city

	@query
	Scenario: Query for analysis of daily forecasts for a city by city ID for a city that does not exist
		When I query for analysis of daily forecasts for a city by ID
		And The city does not exist
		Then I see an error that the city does not exist

	@query
	Scenario: Query for an analysis of daily forecasts for a city by zip code for a city that exists
		When I query for an analysis of daily forecasts for a city by zip code
		And The city exists
		Then I see an analysis of daily forecasts for the city

	@query
	Scenario: Query for an analysis of daily forecasts for a city by zip code for a city that does not exist
		When I query for an analysis of daily forecasts for a city by zip code
		And The city does not exist
		Then I see an error that the city does not exist

	@query
	Scenario: Query for an analysis of daily forecasts for a region by region name for a region that exists
		When I query for an analysis of daily forecasts for a region by name
		And The region exists
		Then I see an analysis of daily forecasts for the region

	@query
	Scenario: Query for an analysis of daily forecasts for a region by region name for a region that does not exist
		When I query for an analysis of daily forecasts for a region by name
		And The region does not exist
		Then I see an error that the region does not exist

