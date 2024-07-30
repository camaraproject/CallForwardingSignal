Feature: CAMARA Call Fowarwing Signal  API, v0.1.0 - Operation unconditional-call-forwarding
  # Input to be provided by the implementation to the tester
  #
  # Implementation indications:
  #
  # Testing assets:
  # * A device object identified by a phone number for which unconditional call forwarding service (CFS) status could be retrieved
  # * A device object identified by a phone number for which unconditional call forwarding service (CFS) status could not be retrieved
  #
  Background: Common call-forwarding-signal setup
    Given the path "/unconditional-call-forwardings"
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
    And "login_hint" is valorised as "$.phoneNumber"
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/UnconditionalCallForwardingSignal"
  
  # phone number defined by phoneNumber and login_hint and the CFS status for the phone number is known by the network.
  @call_forwarding_signal_02_unconditional_phoneNumber_login_hint
  Scenario: retrieve unconditional call forwarding settings for a given phone number. The endpoint is invoked with phoneNumber valorised with the same value of login_hint
    Given the request body property "$.phoneNumber" is set to a valid phone number supported by the service
    And the request body is set to a valid request body
    And "login_hint" is valorised as "$.phoneNumber"
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response body complies with the OAS schema at "/components/schemas/UnconditionalCallForwardingSignal"
    And the response body property "$.active" is one of: ["true", "false"]

  # phone number defined by login_hint and the CFS status for the phone number is known by the network. phoneNumber not valorised
  @call_forwarding_signal_03_unconditional_login_hint
  Scenario: retrieve unconditional call forwarding settings for a given phone number. The endpoint is invoked without a value for phoneNumber and login_hint is used to carry the phone number.
    Given the request body property "$.phoneNumber" is not valorised
    And the request body is set to a valid request body
    And "login_hint" is set to a valid phone number supported by the service
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response body property "$.active" is one of: ["true", "false"]

  # Error path scenarios
  
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
  Scenario: Endpoint invoked with "login_hint" different from phoneNumber
      Given the request body property "$.phoneNumber" is set to a valid phone number
      And "login_hint" is set to a different valid phone number 
      When the HTTP "POST" request is sent
      Then the response status code is 403
      And the response property "$.status" is 403
      And the response property "$.code" is "INVALID_TOKEN_CONTEXT"
      And the response property "$.message" contains a user friendly text
  
  # Generic 404 error - unknown phone number
  @call_forwarding_signal_404.1_unconditional_call_forwarding_for_unknown_phoneNumber
  Scenario: retrieve call forwarding signal on a properly formatted phone number unknown by the network
    Given the request body property "$.phoneNumber" is set to a valid phone number for which the unconditional call forwarding status could not be retrieved
    And the request body is set to a valid request body
    And "login_hint" is set to a valid phone number supported by the service with the same value as "$.phoneNumber"
    When the HTTP "POST" request is sent
    Then the response status code is 404
    And the response property "$.code" is "CALL_FORWARDING.UNKNOWN_PHONE_NUMBER"
    And the response property "$.message" contains a user friendly text

  @call_forwarding_signal_404.2_unconditional_call_forwarding_for_unknown_login_hint
  Scenario: retrieve call forwarding signal on a properly formatted phone number unknown by the network
    Given the request body property "$.phoneNumber" is not valorised
    And the request body is set to a valid request body
    And "login_hint" is set to a valid phone number supported by the service
    When the HTTP "POST" request is sent
    Then the response status code is 404
    And the response property "$.code" is "CALL_FORWARDING.UNKNOWN_PHONE_NUMBER"
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
      Given "login_hint" is set to a not propertly formatted phone number
      When the HTTP "POST" request is sent
      Then the response status code is 415
      And the response property "$.status" is 415
      And the response property "$.code" is "UNSUPPORTED_MEDIA_TYPE"
      And the response property "$.message" contains a user friendly text

  # Generic 422 error - phone number unavailable
  @call_forwarding_signal_422.phone_number_unavailable
  Scenario: The "phoneNumber" parameter is not included in the request and the phone number information cannot be derived from the 3-legged access token
    Given "login_hint" is not providing the phone number
    And the request body property "$.phoneNumber" is not valorised
    When the HTTP "POST" request is sent
    Then the response status code is 422
    And the response property "$.status" is 422
    And the response property "$.code" is "UNIDENTIFIABLE_DEVICE"
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
