package packaginggroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the PackagingGroup.
	Arn: string
	// The fully qualified domain name for Assets in the PackagingGroup.
	DomainName: string
}
