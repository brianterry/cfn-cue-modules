package accesssource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	AccessSourceId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	CreatedAt: string
	UpdatedAt: string
	Status: #CRResourceStatus
}
