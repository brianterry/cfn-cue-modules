package idnamespace

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The arn associated with the IdNamespace
	IdNamespaceArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(idnamespace/[a-zA-Z_0-9-]{1,255})$"
	// The date and time when the IdNamespace was created
	CreatedAt: string
	// The date and time when the IdNamespace was updated
	UpdatedAt: string
}
