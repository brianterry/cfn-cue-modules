package matchmakingruleset

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift matchmaking rule set resource and uniquely identifies it.
	Arn: string & =~"^arn:.*:matchmakingruleset\\/[a-zA-Z0-9-\\.]*"
	// A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds.
	CreationTime: string
}
