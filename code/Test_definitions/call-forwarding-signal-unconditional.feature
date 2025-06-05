Feature: CAMARA Call Forwarding Signal  API, v0.4.0-alpha.1 - Operation unconditional-call-forwarding
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
  @call_forwarding_signal_01_unconditional_generic_success_scenario_2-legs
  Scenario: Common validations for any success scenario with 2-legs authentication
    # Valid testing default request body compliant with the schema
    Given the request body property "$.phoneNumber" is set to a valid phone number supported by the service
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/UnconditionalCallForwardingSignal"

  @call_forwarding_signal_01.1_generic_success_scenario_3-legs
  Scenario: Common validations for any success scenario with 3-legs authentication
    # Valid testing default request body compliant with the schema
    Given the request body is set to a valid request body
    And the request body property "$.phoneNumber" is not set to a value
    And The header "Authorization" is set to a valid access token identifying a phone number 
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/UnconditionalCallForwardingSignal"
  
  # phone number defined by phoneNumber (2-legs authentication) and the CFS status for the phone number is known by the network.
  @call_forwarding_signal_02_unconditional_phoneNumber
  Scenario: retrieve unconditional call forwarding settings for a given phone number. The endpoint is invoked with  "$.phoneNumber" set to a proper value
    Given the request body property "$.phoneNumber" is set to a valid phone number supported by the service
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response body complies with the OAS schema at "/components/schemas/UnconditionalCallForwardingSignal"
    And the response body property "$.active" is one of: ["true", "false"]

  # phone number defined by access token and the CFS status for the phone number is known by the network. phoneNumber not set
  @call_forwarding_signal_03_unconditional_access_token
  Scenario: retrieve unconditional call forwarding settings for a given phone number. The endpoint is invoked without a value for phoneNumber and the phone number is retrieved from the access token.
    Given the request body property "$.phoneNumber" is not set to a value
    And the request body is set to a valid request body
    And The header "Authorization" is set to a valid access token identifying a phone number
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
  Scenario: Empty object as request body with 2-legs authentication
    Given the request body is set to "{}"
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @call_forwarding_signal_400.3_C02.01_phone_number_not_schema_compliant
  Scenario: Phone number value does not comply with the schema (with 2-legs authentication)
    Given the request body property "$.phoneNumber" does not comply with the OAS schema at "/components/schemas/PhoneNumber"
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  # Generic 401 Error - authentication
  @call_forwarding_signal_401.invalid_token
  Scenario: Endpoint invoked with an invalid authentication token
    Given an invalid authentication token
    When the HTTP "POST" request is sent
    Then the response status code is 401
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text

  # Generic 403 error - insufficient permission
  @call_forwarding_signal_403_permission_denied
  Scenario: Endpoint invoked with an authentication token not valid for the endpoint context
    Given an access token with an invalid context
    When the HTTP "POST" request is sent
    Then the response status code is 403
    And the response property "$.status" is 403
    And the response property "$.code" is "PERMISSION_DENIED"
    And the response property "$.message" contains a user friendly text
  
  # Generic 404 error - unknown phone number
  @call_forwarding_signal_404.1_call_forwarding_for_unknown_phoneNumber_2-legs
  Scenario: retrieve call forwarding signal on a properly formatted phone number unknown by the network
    Given the request body property "$.phoneNumber" is set to a valid phone number for which the unconditional call forwarding status could not be retrieved
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 404
    And the response property "$.code" is "IDENTIFIER_NOT_FOUND"
    And the response property "$.message" contains a user friendly text

  @call_forwarding_signal_404.2_call_forwarding_for_unknown_phoneNumber_from_access_token_3-legs_C02.02_phone_number_not_found
  Scenario: Phone number not found
      Given the header "Authorization" is set to a valid access token which does not identify a single phone number
      And the request body property "$.phoneNumber" is compliant with the schema but does not identify a valid phone number
      When the HTTP "POST" request is sent
      Then the response status code is 404
      And the response property "$.status" is 404
      And the response property "$.code" is "IDENTIFIER_NOT_FOUND"
      And the response property "$.message" contains a user friendly text

  # Generic 422 error - phone number unavailable
  @call_forwarding_signal_422.1_phone_number_unavailable_2-legs_C02.04_missing_phone_number
  Scenario: Phone number not included and cannot be deducted from the access token
      Given the header "Authorization" is set to a valid access token which does not identify a single phone number
      And the request body property "$.phoneNumber" is not included
      When the HTTP "POST" request is sent
      Then the response status code is 422
      And the response property "$.status" is 422
      And the response property "$.code" is "MISSING_IDENTIFIER"
        And the response property "$.message" contains a user friendly text

  @call_forwarding_signal_422.2_phone_number_unnecessary_3-legs_C02.03_unnecessary_phone_number
  Scenario: The "phoneNumber" parameter is included in the request
    Given the request body property "$.phoneNumber" is set to a proper value
    And The header "Authorization" is set to a valid access token identifying same phone number 
    When the HTTP "POST" request is sent
    Then the response status code is 422
    And the response property "$.status" is 422
    And the response property "$.code" is "UNNECESSARY_IDENTIFIER"
    And the response property "$.message" contains a user friendly text

  # When the service is only offered to certain type of subscriptions, e.g. IoT, , B2C, etc
  @call_forwarding_signal_422.3_2-legs_C02.05_phone_number_not_supported
  Scenario: Service not available for the phone number
      Given that the service is not available for all phone numbers commercialized by the operator
      And a valid phone number, identified by the token or provided in the request body, for which the service is not applicable
      When the HTTP "POST" request is sent
      Then the response status code is 422
      And the response property "$.status" is 422
      And the response property "$.code" is "SERVICE_NOT_APPLICABLE"
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
    Scenario: The server is not able to handle a request because of a lack of resources
      Given the number of endpoints calls from any APi Consumer is equal to the server limit
      And the endpoint is invoked
      When the HTTP "POST" request is sent
      Then the response status code is 429
      And the response property "$.status" is 429
      And the response property "$.code" is "TOO_MANY_REQUEST"
      And the response property "$.message" contains a user friendly text