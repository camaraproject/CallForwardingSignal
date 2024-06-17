
#/*- ---license-start
#* CAMARA Project
#* ---
#* Copyright (C) 2022 - 2023 Contributors | Deutsche Telekom AG to CAMARA a Series of LF Projects, LLC
#* The contributor of this file confirms his sign-off for the
#* Developer Certificate of Origin (http://developercertificate.org).
#* ---
#* Licensed under the Apache License, Version 2.0 (the "License");
#* you may not use this file except in compliance with the License.
#* You may obtain a copy of the License at
#*
#*      http://www.apache.org/licenses/LICENSE-2.0
#*
#* Unless required by applicable law or agreed to in writing, software
#* distributed under the License is distributed on an "AS IS" BASIS,
#* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#* See the License for the specific language governing permissions and
#* limitations under the License.
#* ---license-end
#*/

Background:
    Given an environment at "{apiRoot}/call-forwarding-signal/vwip" 
    And the resource "CreateCallForwardingSignal" is well formatted
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" is set to a UUID value

@CFS @CFSSanity
Feature: Automated Call Forwarding Signal (CFS) API Test

  @CFS_unconditional-call-forwardings_Valid_Parameter
  Scenario: Verify if Unconditional Call Forwarding service is active invoking the unconditional-call-forwardings endpoint with  valid parameters.
    Given the unconditional-call-forwardings enpoint URL
    When invoking the unconditional-call-forwardings, with POST, with valid parameter "CreateCallForwardingSignal" that contains "PhoneNumber" filled with an existing, well formatted, phone number. 
    Then it should provided  back the status  of the Unconditional Call Forwarding service for the target "PhoneNumber". The header "Content-Type" is set to "application/json".
    And Response Code is 200.
    And response contains the UnconditionalCallForwardingSignal Resource with the "active" parameter valorized as "true" or "false."
