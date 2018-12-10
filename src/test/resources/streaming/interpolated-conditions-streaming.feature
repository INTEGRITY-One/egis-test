#Author: ted.velkoff@ionep.com
#Keywords Summary : interpolated conditions streaming
@interpolated-conditions
@streaming
Feature: Interpolated conditions streaming
	Operations that manage the streams of interpolated conditions.
	Is there a distinction between start/stop and suspend/resume?

	@start
	Scenario: Start a stream of interpolated conditions for a geographic location that exists whose stream is not currently running
		When I start a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is not currently running
		Then I see a stream of interpolated conditions

	@start
	Scenario: Start a stream of interpolated conditions for a geographic location that exists whose stream is currently running
		When I start a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is currently running
		Then I see an error that the stream is currently running

	@start
	Scenario: Start a stream of interpolated conditions for a geographic location that does not exist
		When I start a stream of interpolated conditions for a geographic location that does not exist
		Then I see an error that the geographic location does not exist

	@stop
	Scenario: Stop a stream of interpolated conditions for a geographic location that exists whose stream is currently running
		When I stop a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is currently running
		Then I stop seeing a stream of interpolated conditions

	@stop
	Scenario: Stop a stream of interpolated conditions for a geographic location that exists whose stream is not currently running
		When I stop a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is not currently running
		Then I see an error that the stream is not currently running

	@stop
	Scenario: Stop a stream of interpolated conditions for a geographic location that does not exist
		When I start a stream of interpolated conditions for a geographic location that does not exist
		Then I see an error that the geographic location does not exist

	@suspend
	Scenario: Suspend a stream for a geographic location that exists whose stream is currently running
		When I suspend a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is currently running
		Then I stop seeing a stream of interpolated conditions

	@suspend
	Scenario: Suspend a stream of interpolated conditions for a geographic location that exists whose stream is not currently running
		When I suspend a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is not currently running
		Then I see an error that the stream is not currently running

	@suspend
	Scenario: Suspend a stream of interpolated conditions for a geographic location that does not exist
		When I suspend a stream of interpolated conditions for a geographic location that does not exist
		Then I see an error that the geographic location does not exist

	@resume
	Scenario: Resume a stream of interpolated conditions for a geographic location that exists whose stream is not currently running
		When I resume a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is not currently running
		Then I see a stream of interpolated conditions

	@resume
	Scenario: Resume a stream of interpolated conditions for a geographic location that exists whose stream is currently running
		When I resume a stream of interpolated conditions for a geographic location that exists
		And The stream of interpolated conditions for the geographic location is currently running
		Then I see an error that the stream is currently running

	@resume
	Scenario: Resume a stream of interpolated conditions for a geographic location that does not exist
		When I resume a stream of interpolated conditions for a geographic location that does not exist
		Then I see an error that the geographic location does not exist

	@subscribe
	Scenario: Subscribe to a stream of interpolated conditions for a geographic location that exists where a subscription does not exist
		When I subscribe to a stream of interpolated conditions for a geographic location that exists
		And I am not currently subscribed to the stream
		Then I see that I have subscribed to the stream

	@subscribe
	Scenario: Subscribe to a stream of interpolated conditions for a geographic location that exists where a subscription already exists
		When I subscribe to a stream of interpolated conditions for a geographic location that exists
		And I am currently subscribed to the stream
		Then I see an error that a subscription to the stream already exists

	@subscribe
	Scenario: Subscribe to a stream of interpolated conditions for a geographic location that does not exist
		When I subscribe to a stream of interpolated conditions for a geographic location that does not exist
		Then I see an error that the geographic location does not exist

	@unsubscribe
	Scenario: Un-subscribe to a stream of interpolated conditions for a geographic location that exists where a subscription exists
		When I un-subscribe to a stream of interpolated conditions for a geographic location that exists
		And I am currently subscribed to the stream
		Then I see that I have un-subscribed from the stream

	@unsubscribe
	Scenario: Un-subscribe to a stream of interpolated conditions for a geographic location that exists where a subscription does not already exist
		When I un-subscribe to a stream of interpolated conditions for a geographic location that exists
		And I am not currently subscribed to the stream
		Then I see an error that a subscription to the stream does not exist

	@unsubscribe
	Scenario: Un-subscribe to a stream of interpolated conditions for a geographic location that does not exist
		When I un-subscribe to a stream of interpolated conditions for a geographic location that does not exist
		Then I see an error that the geographic location does not exist

