
# Changelog CAMARA CallForwardingSignal

## Table of Contents

- **[r1.2-rc](#r12-rc)**
- **[r1.1-rc](#r11-rc)**

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for each first alpha or release-candidate API version, all changes since the release of the previous public API version
* for subsequent alpha or release-candidate API versions, the delta with respect to the previous pre-release
* for a public API version, the consolidated changes since the release of the previous public API version

# r1.2-rc

## Release Notes

This release contains the definition and documentation of
* call-forwarding-signal v0.2.0-rc.2

The API definition(s) are based on
* Commonalities v0.4.0-rc.1
* Identity and Consent Management v0.2.0-rc.2

## call-forwarding-signal v0.2.0-rc.2

This is the second release candidate of the version 0.2.0. It contains mainly alignments with the Commonalities 0.4.0 and the Release Management Guidelines. 

The release is suitable for implementers, but it is not recommended to use the API with customers in productive environments.

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml)

### Added

### Changed

* Improvement of user stories by @FabrizioMoggio in https://github.com/camaraproject/CallForwardingSignal/pull/86

### Fixed

* Removed the version number in the ".feature" files in the "Background" section by @FabrizioMoggiom in https://github.com/camaraproject/CallForwardingSignal/pull/83
* Alignments within object description and fields by @FabrizioMoggio in https://github.com/camaraproject/CallForwardingSignal/pull/68

### Removed


**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/compare/r1.1...r1.2

# r1.1-rc

**This is the first pre-release of the CAMARA CallForwardingSignal API**

The version number for the YAML file is v0.2.0-rc.1

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml)

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



