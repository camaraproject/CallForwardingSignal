Feature: CAMARA Call Fowarwing Signal  API, v0.1.0 - Operation unconditional-call-forwarding
  # Input to be provided by the implementation to the tester
  #
  # Implementation indications:
  #
  # Testing assets:
  # * A device object identified by a phone number for which unconditionnal call forwarding service status could be retrieved
  # * A device object identified by a phone number for which unconditionnal call forwarding service status could not be retrieved
  #
  # References to OAS spec schemas refer to schemas specifies in Call_Forwarding_Signal.yaml, version TBD
  Background: Common call-forwarding-signal setup
    Given the resource "/call-forwarding-signal/vwip/unconditional-call-forwardings"
    And the header "Content-Type" is set to "application/json"
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" is set to a UUID value
    And the request body is set by default to a request body compliant with the schema

  # Happy path scenarios

  # This first scenario serves as a minimum
  @call_forwarding_signal_01_unconditional_generic_success_scenario
  Scenario: Common validations for any success scenario
    # Valid testing default request body compliant with the schema
    Given the request body property "$.phoneNumber" is set to a valid phone number supported by the service
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/UnconditionalCallForwardingSignal"

  # Scenarios testing specific situations for the call forwarding signal
  @call_forwarding_signal_02_unconditional_call_forwarding_check
  Scenario: retrieve unconditional call forwarding settings for a given phone number
    Given the request body property "$.phoneNumber" is set to a valid phone number for which unconditionnal call forwarding status could be retrieved
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response body property "$.active" is one of: ["true", "false"]

  # Error path scenarios

 # Generic 404 error - unknown phone number
  @call_forwarding_signal_03_unconditional_call_forwarding_for_unknown_phone_number
  Scenario: retrieve call forwarding signal on an properly formatted phone number unknown by the network
    Given the request body property "$.phoneNumber" is set to a valid phone number for which the unconditional call forwarding status could not be retrieved
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 404
    And the response property "$.code" is "CALL_FORWARDING.UNKNOWN_PHONE_NUMBER"
    And the response property "$.message" contains a user friendly text

  # Generic 400 error - input error
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

  # Generic 401 Error - authentication
  @call_forwarding_signal_401.invalid_token
  Scenario: Endpoint invoked with an ivalid authentication token
    Given an invalid authentication token
    When the HTTP "POST" request is sent
    Then the response status code is 401
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text

 # Generic 403 error - insufficient permission
  @call_forwarding_signal_403.1_permission_denied
 Scenario: Endpoint invoked with an authentication token not valid for the endopint context
    Given an access token with an invalid context
    When the HTTP "POST" request is sent
    Then the response status code is 403
    And the response property "$.status" is 403
    And the response property "$.code" is "PERMISSION_DENIED"
    And the response property "$.message" contains a user friendly text

 @call_forwarding_signal_403.2_invalid_context
 Scenario: Endpoint invoked with an authentication token not valid for the endopint context
    Given an access token with an invalid context
    When the HTTP "POST" request is sent
    Then the response status code is 403
    And the response property "$.status" is 403
    And the response property "$.code" is "INVALID_TOKEN_CONTEXT"
    And the response property "$.message" contains a user friendly text

 # Generic 409 error - conflict
 @call_forwarding_signal_409.1_already_exists
 Scenario: Endpoint involked, by the same API Consumer, for a phone number whose status is already under verification
    Given a pending request for a given phone number
    And a the same phone number for a new request
    When the HTTP "POST" for the second request is sent before the first request gets an answer
    Then the response status code is 409
    And the response property "$.status" is 409
    And the response property "$.code" is "ALREADY_EXISTS"

 # Generic 415 error - phone number format
 @call_forwarding_signal_415.wrong_phone_number_format
  Scenario: The phone number is not properly formatted
    Given the request body property "$.phoneNumber" is set to a not properly formatted phone number
    When the HTTP "POST" request is sent
    Then the response status code is 415
    And the response property "$.status" is 415
    And the response property "$.code" is "UNSUPPORTED_MEDIA_TYPE"
    And the response property "$.message" contains a user friendly text

 # Generic 429 error - too many requests
 @call_forwarding_signal_429.1_quota_limit_exceeded
  Scenario: The API Consumer exceeds the business quota limit
    Given the number of endpoints calls is equal to the business limit
    And a new endpoint invokation is done
    When the HTTP "POST" request is sent
    Then the response status code is 429
    And the response property "$.status" is 429
    And the response property "$.code" is "QUOTA_EXCEEDED"
    And the response property "$.message" contains a user friendly text

 @call_forwarding_signal_429.2_too_many_requests
  Scenario: The server is not able to handle a requst because of a lack of resources
    Given the number of endpoints calls from any APi Consumer is equal to the server limit
    And the endpoint is invoked
    When the HTTP "POST" request is sent
    Then the response status code is 429
    And the response property "$.status" is 429
    And the response property "$.code" is "TOO_MANY_REQUEST"
    And the response property "$.message" contains a user friendly text