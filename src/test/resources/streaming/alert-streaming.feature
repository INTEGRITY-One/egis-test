#Author: ted.velkoff@ionep.com
#Keywords Summary : alert streaming
@alert
@streaming
Feature: Alert streaming
	Operations that manage the streams of alerts.
	Is there a distinction between start/stop and suspend/resume?

	@start
	Scenario: Start a stream of alerts for a city that exists whose stream is not currently running
		When I start a stream of alerts for a city that exists
		And The stream of alerts for the city is not currently running
		Then I see a stream of alerts

	@start
	Scenario: Start a stream of alerts for a city that exists whose stream is currently running
		When I start a stream of alerts for a city that exists
		And The stream of alerts for the city is currently running
		Then I see an error that the stream is currently running

	@start
	Scenario: Start a stream of alerts for a city that does not exist
		When I start a stream of alerts for a city that does not exist
		Then I see an error that the city does not exist

	@stop
	Scenario: Stop a stream of alerts for a city that exists whose stream is currently running
		When I stop a stream of alerts for a city that exists
		And The stream of alerts for the city is currently running
		Then I stop seeing a stream of alerts

	@stop
	Scenario: Stop a stream of alerts for a city that exists whose stream is not currently running
		When I stop a stream of alerts for a city that exists
		And The stream of alerts for the city is not currently running
		Then I see an error that the stream is not currently running

	@stop
	Scenario: Stop a stream of alerts for a city that does not exist
		When I start a stream of alerts for a city that does not exist
		Then I see an error that the city does not exist

	@suspend
	Scenario: Suspend a stream of alerts for a city that exists whose stream is currently running
		When I suspend a stream of alerts for a city that exists
		And The stream of alerts for the city is currently running
		Then I stop seeing a stream of alerts

	@suspend
	Scenario: Suspend a stream of alerts for a city that exists whose stream is not currently running
		When I suspend a stream of alerts for a city that exists
		And The stream of alerts for the city is not currently running
		Then I see an error that the stream is not currently running

	@suspend
	Scenario: Suspend a stream of alerts for a city that does not exist
		When I suspend a stream of alerts for a city that does not exist
		Then I see an error that the city does not exist

	@resume
	Scenario: Resume a stream of alerts for a city that exists whose stream is not currently running
		When I resume a stream of alerts for a city that exists
		And The stream of alerts for the city is not currently running
		Then I see a stream of alerts

	@resume
	Scenario: Resume a stream of alerts for a city that exists whose stream is currently running
		When I resume a stream of alerts for a city that exists
		And The stream of alerts for the city is currently running
		Then I see an error that the stream is currently running

	@resume
	Scenario: Resume a stream of alerts for a city that does not exist
		When I resume a stream of alerts for a city that does not exist
		Then I see an error that the city does not exist

	@subscribe
	Scenario: Subscribe to a stream of alerts for a city that exists where a subscription does not exist
		When I subscribe to a stream of alerts for a city that exists
		And I am not currently subscribed to the stream
		Then I see that I have subscribed to the stream

	@subscribe
	Scenario: Subscribe to a stream of alerts for a city that exists where a subscription already exists
		When I subscribe to a stream of alerts for a city that exists
		And I am currently subscribed to the stream
		Then I see an error that a subscription to the stream already exists

	@subscribe
	Scenario: Subscribe to a stream of alerts for a city that does not exist
		When I subscribe to a stream of alerts for a city that does not exist
		Then I see an error that the city does not exist

	@unsubscribe
	Scenario: Un-subscribe to a stream of alerts for a city that exists where a subscription exists
		When I un-subscribe to a stream of alerts for a city that exists
		And I am currently subscribed to the stream
		Then I see that I have un-subscribed from the stream

	@unsubscribe
	Scenario: Un-subscribe to a stream of alerts for a city that exists where a subscription does not already exist
		When I un-subscribe to a stream of alerts for a city that exists
		And I am not currently subscribed to the stream
		Then I see an error that a subscription to the stream does not exist

	@unsubscribe
	Scenario: Un-subscribe to a stream of alerts for a city that does not exist
		When I un-subscribe to a stream of alerts for a city that does not exist
		Then I see an error that the city does not exist

