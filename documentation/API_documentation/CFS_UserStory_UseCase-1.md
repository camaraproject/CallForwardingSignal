
| Item | Description | Support Qualifier |
|----|----|----|
|Summary|Banks offer the option for users to receive telephone calls to solve problems, e.g. in case of issues with the bank App, issues with Smartphones, the bank website or any tool providing access to the online bank account management system.  How does the fraudster operate? <br>•  Through social engineering, the fraudster gathers information about bank customers who are engaged in such a situation, needing the bank to contact them.<br>• Once they identify the service provider and phone number of a customer, they manage to successfully activate, on the customer profile, the 'unconditional call forwarding' to a phone number they control.<br>• After successfully setting up 'unconditional call forwarding,' the fraudster then contacts the bank, claiming an inability to access online banking services and requesting a call from a bank representative.<br>• When the bank calls the registered contact number of the user, the active 'unconditional call forwarding' diverts the call directly to the fraudster, thus completing their scheme.<br> The Bank Application, before contacting the customer's phone number, invokes the Call Forwarding Signal (CFS) API to verify if a "unconditional call forwarding" option is active on the customer's phone, avoiding such a fraud| M |
|Roles, Actor(s) and scope|Bank Application (BA): role of Call Forwarding Signal API consumer<br>Operator Platform (OP): role of Call Forwarding Signal API provider<br>Customer: role of owner of the phone number to be verified<br>Scope: Anti fraud| M |
|NF Requirements|| O |
|Pre-conditions|• The BA is aware of the Customer's phone number<br>• The Customer gave the consent to check for the Call Forwarding service activation on his phone number.| M |
|Begins when|The BA invokes the Call Forwarding Signal API to get the information on the status of the Unconditional Call Forwarding service for his Customer's phone number.| M |
|Step 1|The OP identifies the BA as a valid CFS API Consumer| M |
|Step 2|The OP verifies the User Consent| M|
|Step 3|The BA invokes the CFS API Producer providing the Customer's phone number asking for the status of the Unconditional Call Forwarding Service | M |
|Step 4|The CFS API Producer checks if the Customer's phone number has an active Unconditional Call Forwarding Service| M |
|Ends when|The CFS API Producer notifies the BA about the status of the Unconditional Call Forwarding Service| M |
|Post-conditions|The BA is aware of the status for the Unconditional Call Forwarding Service for the Customer's phone number | M |
|Exceptions|Step 4 can generate an exception to be notified to the BA| M | 
