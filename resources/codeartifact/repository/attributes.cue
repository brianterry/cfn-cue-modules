package repository

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The name of the repository. This is used for GetAtt
	Name: string & =~"^([A-Za-z0-9][A-Za-z0-9._\\-]{1,99})$" & strings.MinRunes(2) & strings.MaxRunes(100)
	// The 12-digit account ID of the AWS account that owns the domain.
	DomainOwner: string & =~"[0-9]{12}"
	// The ARN of the repository.
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}
