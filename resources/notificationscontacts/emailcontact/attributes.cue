package emailcontact

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:aws:notifications-contacts::[0-9]{12}:emailcontact/[a-z0-9]{27}$"
	EmailContact: #EmailContact
}
