package collectiongroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the collection group.
	Id: string & strings.MinRunes(3) & strings.MaxRunes(40)
	// The Amazon Resource Name (ARN) of the collection group.
	Arn: string
}
