
| Item | Description | Support Qualifier |
|----|----|----|
|Summary|Banks offer the option for end users to receive telephone calls to solve problems, e.g. in case of issues with the bank App, issues with Smartphones, the bank website or any tool providing access to the online bank account management system.  How does the fraudster operate? <br>•  Through social engineering, the fraudster gathers information about bank end users who are engaged in such a situation, needing the bank to contact them.<br>• Once they identify the service provider and the phone number of an end user, they manage to successfully activate, on the end user's profile, the 'unconditional call forwarding' to a phone number they control.<br>• After successfully setting up 'unconditional call forwarding,' the fraudster then contacts the bank, claiming an inability to access online banking services and requesting a call from a bank representative.<br>• When the bank calls the registered contact number of the end user, the active 'unconditional call forwarding' diverts the call directly to the fraudster, thus completing their scheme.<br> The Bank Application, before contacting the end user's phone number, invokes the Call Forwarding Signal API to verify if a "unconditional call forwarding" option is active on the end user's phone, avoiding such a fraud| M |
|Roles, Actor(s) and scope|Bank Application: role of Call Forwarding Signal API consumer<br>API Provider: role of Call Forwarding Signal API provider<br>End User: role of owner of the phone number to be verified<br>Scope: Anti fraud| M |
|NF Requirements|| O |
|Pre-conditions|• The Bank Application is aware of the End User's phone number<br>• The End User gave the consent to check for the Call Forwarding Service activation on his phone number.| M |
|Begins when|The Bank Application invokes the Call Forwarding Signal API to get the information on the status of the Unconditional Call Forwarding Service for his End User's phone number.| M |
|Step 1|The API Provider identifies the Bank Application as a valid Call Forwarding Signal API Consumer| M |
|Step 2|The API Provider verifies the User Consent| M|
|Step 3|The Bank Application invokes the Call Forwarding Signal API Producer providing the End User's phone number asking for the status of the Unconditional Call Forwarding Service | M |
|Step 4|The Call Forwarding Signal API Producer checks if the End User's phone number has an active Unconditional Call Forwarding Service| M |
|Ends when|The Call Forwarding Signal API Producer notifies the Bank Application about the status of the Unconditional Call Forwarding Service| M |
|Post-conditions|The Bank Application is aware of the status for the Unconditional Call Forwarding Service for the End User's phone number | M |
|Exceptions|Step 4 can generate an exception to be notified to the Bank Application| M | 
