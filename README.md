<a href="https://github.com/camaraproject/CallForwardingSignal/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/pulls" title="Open Pull Requests"><img src="https://img.shields.io/github/issues-pr/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/graphs/contributors" title="Contributors"><img src="https://img.shields.io/github/contributors/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal" title="Repo Size"><img src="https://img.shields.io/github/repo-size/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/blob/main/LICENSE" title="License"><img src="https://img.shields.io/badge/License-Apache%202.0-green.svg?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/releases/latest" title="Latest Release"><img src="https://img.shields.io/github/release/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/Governance/blob/main/ProjectStructureAndRoles.md" title="Incubated API Repository"><img src="https://img.shields.io/badge/Incubated%20API%20Repository-green?style=plastic"></a>

# CallForwardingSignal
Incubated API Repository to evolve and maintain the definitions and documentation of Call Forwarding Signal Service API within the Sub Project CallForwardingSignal.

* API Repository wiki page: https://lf-camaraproject.atlassian.net/wiki/spaces/CAM/pages/14549020/CallForwardingSignal
* Sub Project home page: https://github.com/camaraproject/CallForwardingSignal 

## Scope
* Service APIs for “CallForwardingSignal” (see APIBacklog.md)  
* It provides the customer with the ability to:  
  * The Call Forwarding Signal (CFS) API provides the API Consumer with information about the status of the Call Forwarding Service on a specific phone number. The main scope of the CFS API is "anti Fraud" to avoid fraudsters to use the Call Forwarding Service to carry on a scam. Other use cases are anyway supported by the CFS API that also provides additional endpoints to detect the general Call Forwarding Service settings.
  * The Application Server invokes the Call Forwarding Signal API to determine if a specific phone number has an active "call forwarding" setup. "Call forwarding" is a network service that redirects incoming calls to another phone number (configured in the service). The Call Forwarding Signal API can be used by a bank to verify if a “call forwarding” option is active on the customer’s phone number to avoid frauds. A call from the bank to the customers can indeed be forwarded to a different number because of a fraud attempt.
  * The API is useful to avoid frauds. Banks offer the option for users to receive telephone calls to solve problems, e.g. in case of issues with the bank App, issues with Smartphones, the bank website or any tool providing access to the online bank account management system.<br>How does the fraudster operate?<br>• Through social engineering, the fraudster gathers information about bank customers who are engaged in such a situation, needing the bank to contact them.<br>• Once they identify the service provider and phone number of a customer, they manage to successfully activate, on the customer profile, the 'call forwarding' to a phone number they control.<br>• After successfully setting up 'call forwarding,' the fraudster then contacts the bank, claiming an inability to access online banking services and requesting a call from a bank representative. <br>• When the bank calls the registered contact number of the user, the active 'call forwarding' diverts the call directly to the fraudster, thus completing their scheme.<br> The Call Forwarding Signal API can be used by the bank to verify if a "call forwarding" option is active on the customer's phone, avoiding such a fraud.
* Describe, develop, document and test the API 
* Started: February 2024 
* Incubated since: February 2025

## Release Information

* Note: Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until a new release is created. For example, changes may be reverted before a release is created. **For best results, use the latest available release**.
* **The latest available version of CAMARA CallForwardingSignal API is v0.3.0**
* The Release Tag is [r2.2](https://github.com/camaraproject/CallForwardingSignal/releases/tag/r2.2).
- API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/CallForwardingSignal/blob/r2.2/code/API_definitions/call-forwarding-signal.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r2.2/code/API_definitions/call-forwarding-signal.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/camaraproject/CallForwardingSignal/r2.2/code/API_definitions/call-forwarding-signal.yaml)
## Contributing
* Meetings are held virtually
  * Schedule: Monday 15h-16 CET, usually every two weeks. For the next meetings information, have a look on the [API Wiki Page](https://lf-camaraproject.atlassian.net/wiki/spaces/CAM/pages/14549020/CallForwardingSignal).
  * [Registration / Join](https://zoom-lfx.platform.linuxfoundation.org/meeting/96706226837?password=2d113354-bf97-4441-8d6d-9fd0ae69f2d1)
  * Minutes: Access [meeting minutes](https://lf-camaraproject.atlassian.net/wiki/spaces/CAM/pages/14574452/CallForwardingSignal+Minutes?atlOrigin=eyJpIjoiNjc1Mzc3ZWIwNGI4NGRhMmE2YjBkMGFjNmFjMTNiZDUiLCJwIjoiYyJ9)
* Mailing List
  * Subscribe / Unsubscribe to the mailing list <https://lists.camaraproject.org/g/sp-cfs>.
  * A message to all Contributors of this Sub Project can be sent using <sp-cfs@lists.camaraproject.org>.
