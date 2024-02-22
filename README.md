<a href="https://github.com/camaraproject/CallForwardingSignal/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/pulls" title="Open Pull Requests"><img src="https://img.shields.io/github/issues-pr/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/graphs/contributors" title="Contributors"><img src="https://img.shields.io/github/contributors/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal" title="Repo Size"><img src="https://img.shields.io/github/repo-size/camaraproject/CallForwardingSignal?style=plastic"></a>
<a href="https://github.com/camaraproject/CallForwardingSignal/blob/main/LICENSE" title="License"><img src="https://img.shields.io/badge/License-Apache%202.0-green.svg?style=plastic"></a>

# CallForwardingSignal
Repository to describe, develop, document and test the Call Forwarding Signal API

## Scope
* Service APIs for “CallForwardingSignal” (see APIBacklog.md)  
* It provides the customer with the ability to:  
  * This API uses phoneNumber info, usually stored by the Mobile Network Operator, to determine if a "call forwarding" service is enabled.
  * The Application Server invokes the Call Forwarding Signal API to determine if a specific telephone number has an active "call forwarding" setup. "Call forwarding" is a network service that redirects incoming calls to another phone number (configured in the service). The Call Forwarding Signal API can be used by a bank to verify if a “call forwarding” option is active on the customer’s phone number to avoid frauds. A call from the bank to the customers can indeed be forwarded to a different number because of a fraud attempt.
  * The API is useful to avoid frauds. Banks offer the option for users to receive telephone calls to solve problems, e.g. in case of issues with the bank App, issues with Smartphones, the bank website or any tool providing access to the online bank account management system.<br>How does the fraudster operate?<br>• Through social engineering, the fraudster gathers information about bank customers who are engaged in such a situation, needing the bank to contact them.<br>• Once they identify the service provider and phone number of a customer, they manage to successfully activate, on the customer profile, the 'call forwarding' to a phone number they control.<br>• After successfully setting up 'call forwarding,' the fraudster then contacts the bank, claiming an inability to access online banking services and requesting a call from a bank representative. <br>• When the bank calls the registered contact number of the user, the active 'call forwarding' diverts the call directly to the fraudster, thus completing their scheme.<br> The Call Forwarding Signal API can be used by the bank to verify if a "call forwarding" option is active on the customer's phone, avoiding such a fraud.
* Describe, develop, document and test the APIs (with 1-2 Telcos)  
* Started: February 2024
* Location: virtually  

## Meetings
* Meetings are held virtually
* Schedule: Tuesday 15h-16 CET, every two weeks (next one: 5th of March)
* Meeting link: https://teams.microsoft.com/l/meetup-join/19%3ameeting_ZWZhMzljYzItNzQ4Yy00NGM4LThhMzktZTQ0MDg3ODI3MDg4%40thread.v2/0?context=%7b%22Tid%22%3a%226815f468-021c-48f2-a6b2-d65c8e979dfb%22%2c%22Oid%22%3a%22bfbe4cda-8a8b-4cda-89e2-7326520e45b3%22%7d

## Contributorship and mailing list
* To subscribe / unsubscribe to the mailing list of this Sub Project and thus be / resign as Contributor please visit <https://lists.camaraproject.org/g/sp-cfs>.
* A message to all Contributors of this Sub Project can be sent using <sp-cfs@lists.camaraproject.org>.
