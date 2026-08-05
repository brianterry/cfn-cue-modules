package prefixlist

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of Prefix List.
	PrefixListId: string
	// Owner Id of Prefix List.
	OwnerId: string
	// Version of Prefix List.
	Version: int
	// The Amazon Resource Name (ARN) of the Prefix List.
	Arn: string
}
