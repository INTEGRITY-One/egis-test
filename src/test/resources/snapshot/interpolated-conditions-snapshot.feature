#Author: ted.velkoff@ionep.com
#Keywords Summary : interpolated conditions snapshot
@interpolated-conditions
@snapshot
Feature: Interpolated conditions snapshots
	Operations that query for snapshots of interpolated conditions.

	@query
	Scenario: Query for snapshot of interpolated conditions for a geographic location for a geographic location that exists
		When I query for snapshot of interpolated conditions for a geographic locaion
		And The geographic location exists
		Then I see a snapshot of interpolated conditions for the geographic location

	@query
	Scenario: Query for snapshot of interpolated conditions for a geographic location for a geographic location that does not exist
		When I query for snapshot of interpolated conditions for a geographic location
		And The geographic location does not exist
		Then I see an error that the geographic location does not exist

