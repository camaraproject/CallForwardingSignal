
# Changelog CAMARA CallForwardingSignal

## Table of Contents

- **[r1.1-rc](#r11-rc)**
- **[r1.2-rc](#r12-rc)**

# r1.1-rc

**This is the first pre-release of the CAMARA CallForwardingSignal API**

The version number for the YAML file is v0.2.0-rc.1

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.1/code/API_definitions/Call_Forwarding_Signal.yaml)

## Please note:

- This pre-release concernes a release-candidate API version, there are bug fixes to be expected and incompatible changes in upcoming versions 
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

# r1.2-rc

**This is the second pre-release of the CAMARA CallForwardingSignal API**

The version number for the YAML file is v0.2.0-rc.2

- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r1.2/code/API_definitions/Call_Forwarding_Signal.yaml)

## Please note:

- This pre-release concernes a release-candidate API version, there are bug fixes to be expected and incompatible changes in upcoming versions 
- The release is suitable for implementers, but it is not recommended to use the API with customers in productive environments
- The release scope is defined here: https://github.com/camaraproject/CallForwardingSignal/issues/72

## Changes compared with [r1.1-rc](#r11-rc)

* The contact field (and value) have been be removed from the OAS file: https://github.com/camaraproject/CallForwardingSignal/issues/76
* Update of the API Readiness Checklist: https://github.com/camaraproject/CallForwardingSignal/issues/80
* Rename of the API Readiness Checklist: https://github.com/camaraproject/CallForwardingSignal/issues/79
* Improvement of the user stories: https://github.com/camaraproject/CallForwardingSignal/issues/81
* Removal of the version number in the ".feature" files in the "Background" section: https://github.com/camaraproject/CallForwardingSignal/issues/77
* Commonalities version reported in the OAS file: https://github.com/camaraproject/CallForwardingSignal/issues/66

## New Contributors
* @FabrizioMoggio
* @bigludo7
* @rartych
* @StefanoFalsetto-CKHIOD
* @enlaichu
* @chinaunicomyangfan

**Full Changelog**: https://github.com/camaraproject/CallForwardingSignal/commits/r1.2

