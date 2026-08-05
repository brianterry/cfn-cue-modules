package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The time at which the domain was created.
	CreatedTime: string
	// The Amazon Resource Name (ARN) for the Cases domain.
	DomainArn: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The unique identifier of the Cases domain.
	DomainId: string & strings.MinRunes(1) & strings.MaxRunes(500)
	DomainStatus: #DomainStatus
}
