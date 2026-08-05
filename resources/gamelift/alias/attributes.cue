package alias

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique alias ID
	AliasId: string
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift Alias resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift Alias ARN, the resource ID matches the AliasId value.
	AliasArn: string & =~"^arn:.*:alias\\/alias-\\S+"
}
