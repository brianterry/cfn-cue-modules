package oauthclientapplication

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[-a-z0-9]*:quicksight:[-a-z0-9]*:[0-9]{12}:oauthclientapplication/.+"
	CreatedTime: string
	LastUpdatedTime: string
}
