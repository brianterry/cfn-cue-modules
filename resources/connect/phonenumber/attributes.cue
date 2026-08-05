package phonenumber

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The phone number ARN
	PhoneNumberArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:phone-number/[-a-zA-Z0-9]*$"
	// The phone number e164 address.
	Address: string & =~"^\\+[0-9]{2,15}"
}
