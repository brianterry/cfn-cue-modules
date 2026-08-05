package containergroupdefinition

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift container group resource and uniquely identifies it across all AWS Regions.
	ContainerGroupDefinitionArn: string & =~"^arn:.*:containergroupdefinition\\/[a-zA-Z0-9\\-]+(:[0-9]+)?$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
	CreationTime: string
	// The version of this ContainerGroupDefinition
	VersionNumber: int & >=0
	// A string indicating ContainerGroupDefinition status.
	Status: "READY" | "COPYING" | "FAILED"
	// A string indicating the reason for ContainerGroupDefinition status.
	StatusReason: string
}
