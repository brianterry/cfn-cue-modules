package gamesessionqueue

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift game session queue resource and uniquely identifies it.
	Arn: string & =~"^arn:.*:gamesessionqueue\\/[a-zA-Z0-9-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
}
