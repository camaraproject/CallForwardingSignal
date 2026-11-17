# Changelog CallForwardingSignal

<!-- TOC:START -->
## Table of Contents
- **[r4.3](#r43)**
- [r4.2](#r42)
- [r4.1](#r41)
<!-- TOC:END -->

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

# r4.3

## Release Notes

This public release contains the definition and documentation of
* call-forwarding-signal 0.5.0

The API definition(s) are based on
* Commonalities r4.4 (0.9.0)
* Identity and Consent Management r4.2 (0.5.0)

## call-forwarding-signal 0.5.0

**call-forwarding-signal 0.5.0 is an initial public version of this API.**

Changes documented below are compared to version 0.4.0.

- API definition **with inline documentation**:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r4.3/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r4.3/code/API_definitions/call-forwarding-signal.yaml)
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r4.3/code/API_definitions/call-forwarding-signal.yaml)

### Breaking changes

* Renamed endpoints to comply with Commonalities r4.3 (issue #235) by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/236 - changes applied:

| | Old | New |
|---|---|---|
| Path | `POST /unconditional-call-forwardings` | `POST /check-unconditional-forwarding` |
| operationId | `retrieveUnconditionalCallForwarding` | `checkUnconditionalCallForwarding` |
| Scope | `call-forwarding-signal:unconditional-call-forwardings:read` | `call-forwarding-signal:unconditional-forwarding:check` |
| Path | `POST /call-forwardings` | `POST /retrieve-forwardings` |
| operationId | `retrieveCallForwarding` | `retrieveCallForwardings` |
| Scope | `call-forwarding-signal:call-forwardings:read` | `call-forwarding-signal:forwardings:retrieve` |

### Added

* N/A

### Changed

* Renamed endpoints to comply with Commonalities r4.3 (issue #235) by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/236 - see **Breaking changes**
* Aligned error responses with Commonalities r4.4: all responses use the common definitions and examples (`BadRequest400`, `Unauthenticated401`, `PermissionDenied403`, `IdentifierNotFound404`, `PhoneNumberIdentifier422`, `TooManyRequestsOrQuota429`, `NotImplemented501`), and `404` responses document only `IDENTIFIER_NOT_FOUND` (`NOT_FOUND` removed) by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/252 and @hdamker in https://github.com/camaraproject/CallForwardingSignal/pull/257
* Renamed operation tags `Unconditional Call Forwarding information retrieval` to `Unconditional Call Forwarding Information Check` and `Call Forwarding information retrieval` to `Call Forwarding Information Retrieval` by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/229 and https://github.com/camaraproject/CallForwardingSignal/pull/252
* Used common definitions from Commonalities r4.4 for `phoneNumber`, `x-correlator`, `ErrorInfo` and the `openId` security scheme; this adds `maxLength` bounds (`phoneNumber` 16, `x-correlator` 256) that the existing patterns already enforced, by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/229 and https://github.com/camaraproject/CallForwardingSignal/pull/253
* Added the request body strictness statement to `info.description`: requests with properties not declared in the specification are rejected with `400 INVALID_ARGUMENT` by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/229
* Limited the `retrieve-forwardings` response array to at most 5 items (`maxItems: 5`) by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/229

### Fixed

* Fixed the broken link to the Call Forwarding Verification use case and duplicated words in `info.description`, and corrected the test definitions (OAS schema references, response body assertions, duplicate 404 scenario and its tag) by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/230 and @bigludo7 in https://github.com/camaraproject/CallForwardingSignal/pull/258

### Removed

* Removed conflicting 400.2 test case from .feature files by @mohdfarhanakram in https://github.com/camaraproject/CallForwardingSignal/pull/221

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r3.3...r4.3

# r4.2

## Release Notes

This release candidate contains the definition and documentation of
* call-forwarding-signal 0.5.0-rc.2

The API definition(s) are based on
* Commonalities r4.4 (0.9.0)
* Identity and Consent Management r4.2 (0.5.0)

## call-forwarding-signal 0.5.0-rc.2

**call-forwarding-signal 0.5.0-rc.2 is a release-candidate version of this API.**

Changes documented below are compared to version 0.5.0-rc.1.

- API definition **with inline documentation**:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r4.2/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r4.2/code/API_definitions/call-forwarding-signal.yaml)
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r4.2/code/API_definitions/call-forwarding-signal.yaml)

### Breaking changes

* N/A

### Added

* N/A

### Changed

* Update additional error responses mandatory text by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/242
* Refactor error response references in API definition to use common definitions and examples by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/252
* Renamed operation tag `Unconditional Call Forwarding Information Retrieval` to `Unconditional Call Forwarding Information Check` by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/252
* Use of common references (phoneNumber, x-correlator, securitySchemes) in API definition by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/253
* Align 404, 429 and 501 error responses with Commonalities r4.4 by @hdamker in https://github.com/camaraproject/CallForwardingSignal/pull/257

### Fixed

* Minor corrections in API description and test definitions by @bigludo7 in https://github.com/camaraproject/CallForwardingSignal/pull/258

### Removed

* N/A

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r4.1...r4.2

# r4.1

## Release Notes

This release candidate contains the definition and documentation of
* call-forwarding-signal 0.5.0-rc.1

The API definition(s) are based on
* Commonalities r4.3 (0.8.0)
* Identity and Consent Management r4.2 (0.5.0)

## call-forwarding-signal 0.5.0-rc.1

**call-forwarding-signal 0.5.0-rc.1 is a release-candidate version of this API.**

Changes documented below are compared to version 0.4.0.

- API definition **with inline documentation**:
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r4.1/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r4.1/code/API_definitions/call-forwarding-signal.yaml)
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r4.1/code/API_definitions/call-forwarding-signal.yaml)

### Breaking changes

* renamed endpoints to comply with Commonalities r4.3 (issue #235) by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/236 - changes applied:

| | Old | New |
|---|---|---|
| Path | `POST /unconditional-call-forwardings` | `POST /check-unconditional-forwarding` |
| operationId | `retrieveUnconditionalCallForwarding` | `checkUnconditionalCallForwarding` |
| Scope | `call-forwarding-signal:unconditional-call-forwardings:read` | `call-forwarding-signal:unconditional-forwarding:check` |
| Path | `POST /call-forwardings` | `POST /retrieve-forwardings` |
| operationId | `retrieveCallForwarding` | `retrieveCallForwardings` |
| Scope | `call-forwarding-signal:call-forwardings:read` | `call-forwarding-signal:forwardings:retrieve` |

### Added

* N/A

### Changed

* renamed endpoints to comply with Commonalities r4.3 (issue #235) by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/236 - see **Breaking changes**

### Fixed

* resolved CAMARA validation warnings by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/229
* corrected OAS schema refs and response body assertions in test definitions by @rartych in https://github.com/camaraproject/CallForwardingSignal/pull/230

### Removed

*  removed conflicting 400.2 test case from .feature files by @mohdfarhanakram in https://github.com/camaraproject/CallForwardingSignal/pull/221

## New Contributors
* @mohdfarhanakram made their first contribution in https://github.com/camaraproject/CallForwardingSignal/pull/221

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r3.3...r4.1
