package containerfleet

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
	CreationTime: string
	// The current status of the container fleet.
	Status: "PENDING" | "CREATING" | "CREATED" | "ACTIVATING" | "ACTIVE" | "UPDATING" | "DELETING"
	// Unique fleet ID
	FleetId: string & =~"^[a-z]*fleet-[a-zA-Z0-9\\-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift container fleet resource and uniquely identifies it across all AWS Regions.
	FleetArn: string & =~"^arn:.*:[a-z]*fleet\\/[a-z]*fleet-[a-zA-Z0-9\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	DeploymentDetails: #DeploymentDetails
	// The Amazon Resource Name (ARN) of the game server container group definition. This field will be empty if GameServerContainerGroupDefinitionName is not specified.
	GameServerContainerGroupDefinitionArn: string & =~"^arn:.*:containergroupdefinition\\/[a-zA-Z0-9\\-]+(:[0-9]+)?$|^$" & strings.MaxRunes(512)
	// The Amazon Resource Name (ARN) of the per instance container group definition. This field will be empty if PerInstanceContainerGroupDefinitionName is not specified.
	PerInstanceContainerGroupDefinitionArn: string & =~"^arn:.*:containergroupdefinition\\/[a-zA-Z0-9\\-]+(:[0-9]+)?$|^$" & strings.MaxRunes(512)
	// The maximum number of game server container groups per instance, a number between 1-5000.
	MaximumGameServerContainerGroupsPerInstance: int & >=1 & <=5000
	Locations: [...#LocationConfiguration]
}
