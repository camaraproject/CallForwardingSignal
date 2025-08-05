
# Changelog CAMARA CallForwardingSignal

## Table of Contents

- **[r3.3](#r33)**
- **[r3.2](#r32)**
- **[r3.1](#r31)**
- **[r2.2](#r22)**
- **[r2.1](#r21)**
- **[r1.3](#r13)**
- **[r1.2](#r12)**
- **[r1.1](#r11)**

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

# r3.3

## Release Notes

This release contains the definition and documentation of call-forwarding-signal v0.4.0

The API definition(s) are based on
* Commonalities v0.6.0
* Identity and Consent Management v0.4.0

## call-forwarding-signal v0.4.0

This is a release candidate for the CAMARA Meta Release Fall25 release of the Call Forwarding Signal API, version v0.4.0. It contains mainly alignments with the Commonalities v0.6.0.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r3.3/code/API_definitions/call-forwarding-signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r3.3/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r3.3/code/API_definitions/call-forwarding-signal.yaml)

In the following there is the list of the modifications with respect to the previous release.

### Added

### Changed
 * x-correlator new format: https://github.com/camaraproject/CallForwardingSignal/pull/180, https://github.com/camaraproject/CallForwardingSignal/pull/186
 * Undocumented Errors note in info.description: https://github.com/camaraproject/CallForwardingSignal/pull/180

### Fixed
* fixed some typo: https://github.com/camaraproject/CallForwardingSignal/pull/190
* Enum Value Mismatch Between API and Tests: https://github.com/camaraproject/CallForwardingSignal/pull/190
* 
### Removed
 * Removed error 401: https://github.com/camaraproject/CallForwardingSignal/pull/180
   
**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r2.2...r3.3

# r3.2

## Release Notes

This release contains the definition and documentation of
* call-forwarding-signal v0.4.0-rc.1

The API definition(s) are based on
* Commonalities v0.6.0-rc.1
* Identity and Consent Management v0.4.0-rc.1

## call-forwarding-signal v0.4.0-rc.1

This is a release candidate for the CAMARA Meta Release Fall25 release of the Call Forwarding Signal API, version v0.4.0-rc.1. It contains mainly alignments with the Commonalities v0.6.0-rc.1.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r3.2/code/API_definitions/call-forwarding-signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r3.2/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r3.2/code/API_definitions/call-forwarding-signal.yaml)

In the following there is the list of the modifications with respect to the previous release.

### Added

### Changed

### Fixed
* fixed some typo: https://github.com/camaraproject/CallForwardingSignal/pull/190
* Enum Value Mismatch Between API and Tests: https://github.com/camaraproject/CallForwardingSignal/pull/190
  
### Removed
   
**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r3.1...r3.2

# r3.1

## Release Notes

This release contains the definition and documentation of
* call-forwarding-signal v0.4.0-alpha.1

The API definition(s) are based on
* Commonalities v0.6.0-alpha.1
* Identity and Consent Management v0.4.0-alpha.1

## call-forwarding-signal v0.4.0-alpha.1

This is an alpha release for the CAMARA Meta Release Fall25 release of the Call Forwarding Signal API, version v0.4.0-alpha.1. It contains mainly alignments with the Commonalities v0.6.0-alpha.1.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r3.1/code/API_definitions/call-forwarding-signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r3.1/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r3.1/code/API_definitions/call-forwarding-signal.yaml)

In the following there is the list of the modifications with respect to the previous release.

### Added

### Changed
 * x-correlator new format: https://github.com/camaraproject/CallForwardingSignal/pull/180
 * Undocumented Errors note in info.description: https://github.com/camaraproject/CallForwardingSignal/pull/180

### Fixed

### Removed
 * Removed error 401: https://github.com/camaraproject/CallForwardingSignal/pull/180
   
**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r2.2...r3.1
   
# r2.2

## Release Notes

This release contains the definition and documentation of
* call-forwarding-signal v0.3.0

The API definition(s) are based on
* Commonalities v0.5.0
* Identity and Consent Management v0.3.0

## call-forwarding-signal v0.3.0

This is the second public release of the Call Forwarding Signal API, version v0.3.0. It contains mainly alignments with the Commonalities 0.5 and the Release Management Guidelines.  This version includes improvements from an actual implementation of the API.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r2.2/code/API_definitions/call-forwarding-signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r2.2/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r2.2/code/API_definitions/call-forwarding-signal.yaml)

In the following there is the list of the modifications with respect to the previous release.

### Added

### Changed
 * Call Forwarding Service "state" terminology updated: https://github.com/camaraproject/CallForwardingSignal/pull/117
 * Alignment with CAMARA Guidelines in info.description: https://github.com/camaraproject/CallForwardingSignal/pull/121, https://github.com/camaraproject/CallForwardingSignal/issues/158
 * Enhancements and Alignments in Errors: https://github.com/camaraproject/CallForwardingSignal/pull/121
 * Align API-Testing with CAMARA Guidelines: https://github.com/camaraproject/CallForwardingSignal/pull/121
 * Changed error code 404: https://github.com/camaraproject/CallForwardingSignal/issues/160
 * Alignement with Commonalities for x-correlator and Error 429: https://github.com/camaraproject/CallForwardingSignal/issues/159

### Fixed

### Removed
 * Removed unused Error codes: 
	 * https://github.com/camaraproject/CallForwardingSignal/pull/117
	 * https://github.com/camaraproject/CallForwardingSignal/pull/121

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r1.3...r2.2

# r2.1

## Release Notes

This release contains the definition and documentation of
* call-forwarding-signal v0.3.0-rc.1

The API definition(s) are based on
* Commonalities v0.5.0
* Identity and Consent Management v0.3.0

## call-forwarding-signal v0.3.0-rc.1

This is a release candidate for the Call Forwarding Signal API, version v0.3.0-rc.1. It contains mainly alignments with the Commonalities 0.5 and the Release Management Guidelines.  This version includes improvements from an actual implementation of the API.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r2.1/code/API_definitions/call-forwarding-signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r2.1/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r2.1/code/API_definitions/call-forwarding-signal.yaml)

In the following there is the list of the modifications with respect to the previous release.

### Added

### Changed
 * Call Forwarding Service "state" terminology updated: https://github.com/camaraproject/CallForwardingSignal/pull/117
 * Alignment with CAMARA Guidelines in info.description: https://github.com/camaraproject/CallForwardingSignal/pull/121
 * Enhancements and Alignments in Errors: https://github.com/camaraproject/CallForwardingSignal/pull/121
 * Align API-Testing with CAMARA Guidelines: https://github.com/camaraproject/CallForwardingSignal/pull/121

### Fixed

### Removed
 * Removed unused Error codes: 
	 * https://github.com/camaraproject/CallForwardingSignal/pull/117
	 * https://github.com/camaraproject/CallForwardingSignal/pull/121

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r1.3...r2.1

# r1.3

## Release Notes

This release contains the definition and documentation of
* call-forwarding-signal v0.2.0

The API definition(s) are based on
* Commonalities v0.4.0
* Identity and Consent Management v0.2.0

## call-forwarding-signal v0.2.0

This is the first public release of the Call Forwarding Signal API, version 0.2.0. It contains mainly alignments with the Commonalities 0.4.0 and the Release Management Guidelines. 

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r1.3/code/API_definitions/call-forwarding-signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.3/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.3/code/API_definitions/call-forwarding-signal.yaml)

Because this is the first official release, in the following there is a full list of the features supported by the API, including the features listed in the previous release candidates.

## What's New

* Support for the following use cases: [Use Cases · camaraproject/CallForwardingSignal · Discussion #3 (github.com)](https://github.com/camaraproject/CallForwardingSignal/discussions/3)
* Phone  number retrieved from 3-legs access token: [CAMARA Guidelines: Phone number identification with 3Legs · Issue #51 · camaraproject/CallForwardingSignal (github.com)](https://github.com/camaraproject/CallForwardingSignal/issues/51)
* Optional operation (/call-forwardings):  [Optional operations · Issue #37 · camaraproject/CallForwardingSignal (github.com)](https://github.com/camaraproject/CallForwardingSignal/issues/37)

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r1.2...r1.3
  
# r1.2

## Release Notes

This release contains the definition and documentation of
* call-forwarding-signal v0.2.0-rc.2

The API definition(s) are based on
* Commonalities v0.4.0-rc.1
* Identity and Consent Management v0.2.0-rc.2

## call-forwarding-signal v0.2.0-rc.2

This is the second release candidate of the version 0.2.0. It contains mainly alignments with the Commonalities 0.4.0 and the Release Management Guidelines. 

The pre-release is suitable for implementers, but it is not recommended to use the API with customers in productive environments.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml)

### Added

### Changed

* Improvement of user stories by @FabrizioMoggio in https://github.com/camaraproject/CallForwardingSignal/pull/86
* Aligned info.description Authorization and Authentication section with ICM 0.2.0 by @FabrizioMoggio in https://github.com/camaraproject/CallForwardingSignal/pull/91

### Fixed

* Removed the version number in the ".feature" files in the "Background" section by @FabrizioMoggiom in https://github.com/camaraproject/CallForwardingSignal/pull/83
* Alignments within object description and fields by @FabrizioMoggio in https://github.com/camaraproject/CallForwardingSignal/pull/68

### Removed


**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r1.1...r1.2

# r1.1

**This is the first pre-release of the CAMARA CallForwardingSignal API**

The version number for the YAML file is v0.2.0-rc.1

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml)

## Please note:

- This pre-release contains a release-candidate API version, there are bug fixes to be expected and incompatible changes in upcoming versions 
- The release is suitable for implementers, but it is not recommended to use the API with customers in productive environments
- Version numbers before v0.2.0-rc.1 were used during the development of this version but not released
- The release scope is defined here: https://github.com/camaraproject/CallForwardingSignal/issues/49

## What's New

* Support for the following use cases: [Use Cases · camaraproject/CallForwardingSignal · Discussion #3 (github.com)](https://github.com/camaraproject/CallForwardingSignal/discussions/3)
* Phone  number retrieved from 3-legs access token: [CAMARA Guidelines: Phone number identification with 3Legs · Issue #51 · camaraproject/CallForwardingSignal (github.com)](https://github.com/camaraproject/CallForwardingSignal/issues/51)
* Optional operation (/call-forwardings):  [Optional operations · Issue #37 · camaraproject/CallForwardingSignal (github.com)](https://github.com/camaraproject/CallForwardingSignal/issues/37)

## New Contributors
* @FabrizioMoggio
* @bigludo7
* @rartych
* @StefanoFalsetto-CKHIOD
* @enlaichu
* @chinaunicomyangfan

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/commits/r1.1


