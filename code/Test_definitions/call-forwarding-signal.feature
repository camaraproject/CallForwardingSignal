Feature: CAMARA Call Fowarwing Signal  API, v0.1.0 - Operation unconditional-call-forwarding
  # Input to be provided by the implementation to the tester
  #
  # Implementation indications:
  #
  # Testing assets:
  # * A device object identified by a phone number for which unconditionnal call forwarding status could be retrieved
  # * A device object identified by a phone number for which unconditionnal call forwarding status could not be retrieved (unknown)
  #
  # References to OAS spec schemas refer to schemas specifies in Call_Forwarding_Signal.yaml, version 0.1
  Background: Common call-forwarding-signal setup
    Given the resource "/call-forwarding-signal/v0/unconditional-call-forwardings"                                                              |
    And the header "Content-Type" is set to "application/json"
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" is set to a UUID value
    And the request body is set by default to a request body compliant with the schema

  # Happy path scenarios

  # This first scenario serves as a minimum
  @call_forwarding_signal_01_generic_success_scenario
  Scenario: Common validations for any success scenario
    # Valid testing device and default request body compliant with the schema
    Given the request body property "$.phoneNumber" is set to a valid testing device supported by the service
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/UnconditionalCallForwardingSignal"

  # Scenarios testing specific situations for the call forwarding signal
  @call_forwarding_signal_02_unconditional_call_forwarding_check
  Scenario: retrieve call forwarding signal on a device
    Given the request body property "$.phoneNumber" is set to a valid testing device for which unconditionnal call forwarding status could be retrieved
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response body property "$.active" is one of: ["true", "false"]

  # Error scenarios for phoneNumber
  @call_forwarding_signal_03_unconditional_call_forwarding_for_unknown_phone_number
  Scenario: retrieve call forwarding signal on an unknown device
    Given the request body property "$.phoneNumber" is set to a valid testing device for which unconditionnal call forwarding status could not be retrieved
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 404
    And the response property "$.code" is "CALL_FORWARDING.UNKNOWN_PHONE_NUMBER"
    And the response property "$.message" contains a user friendly text


  # Generic 400 error

  @call_forwarding_signal_400.1_no_request_body
  Scenario: Missing request body
    Given the request body is not included
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @call_forwarding_signal_400.2_empty_request_body
  Scenario: Empty object as request body
    Given the request body is set to "{}"
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

    # Generic 401 Error
