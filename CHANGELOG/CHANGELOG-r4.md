# Changelog CallForwardingSignal

<!-- TOC:START -->
## Table of Contents
- [r4.1](#r41)
<!-- TOC:END -->

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

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

