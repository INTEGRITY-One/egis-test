#Author: ted.velkoff@ionep.com
#Keywords Summary : data-source administration
@data-source
@administration
Feature: Data-source Administration
	Operations that control the selection of the data-source.
	The intent is that one can switch back and forth between the model of a weather reporting system and an actual weather reporting system.

	@toggle
	Scenario: Toggle bewteen data-sources
		When I toggle the data-source
		Then I see the other data-source is selected

	@read
	Scenario: Read the current data-source
		When I query the current data-source
		Then I see the currently-selected data-source

	@read
	Scenario: Read the available data-sources
		When I query the available data-sources
		Then I see the set of available data-sources

