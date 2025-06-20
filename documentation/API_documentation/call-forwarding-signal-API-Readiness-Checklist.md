
# API Readiness Checklist

Checklist for API call-forwarding-signal v0.4.0-alpha.1 in r3.1


| Nr | API release assets  | alpha | release-candidate |  initial<br>public | stable<br> public | Status | Reference information |
|----|----------------------------------------------|:-----:|:-----------------:|:-------:|:------:|:----:|:----|
|  1 | API definition                               |   M   |         M         |    M    |    M   |   Y  | [link](/code/API_definitions/call-forwarding-signal.yaml) |
|  2 | Design guidelines from Commonalities applied |   O   |         M         |    M    |    M   |   Y  | [r3.1](https://github.com/camaraproject/Commonalities/releases/tag/r3.1) |
|  3 | Guidelines from ICM applied                  |   O   |         M         |    M    |    M   |   Y  | [r3.1](https://github.com/camaraproject/IdentityAndConsentManagement/releases/tag/r3.1) |
|  4 | API versioning convention applied            |   M   |         M         |    M    |    M   |   Y  | v0.4.0-alpha.1 |
|  5 | API documentation                            |   M   |         M         |    M    |    M   |   Y  | inline in YAML |
|  6 | User stories                                 |   O   |         O         |    O    |    M   |   Y  | [link](/documentation/API_documentation/CFS_UserStory_UseCase-1.md) |
|  7 | Basic API test cases & documentation         |   O   |         M         |    M    |    M   |   Y  | [call-forwarding-signal-every-forwarding](/code/Test_definitions/call-forwarding-signal-every-forwarding.feature), [call-forwarding-signal-unconditional](/code/Test_definitions/call-forwarding-signal-unconditional.feature) |
|  8 | Enhanced API test cases & documentation      |   O   |         O         |    O    |    M   |   Y  | [call-forwarding-signal-every-forwarding](/code/Test_definitions/call-forwarding-signal-every-forwarding.feature), [call-forwarding-signal-unconditional](/code/Test_definitions/call-forwarding-signal-unconditional.feature) |
|  9 | Test result statement                        |   O   |         O         |    O    |    M   |   N  |      |
| 10 | API release numbering convention applied     |   M   |         M         |    M    |    M   |   Y  | r3.1 |
| 11 | Change log updated                           |   M   |         M         |    M    |    M   |   Y  | [link](/CHANGELOG.md) |
| 12 | Previous public-release was certified        |   O   |         O         |    O    |    M   |   N  |      |
