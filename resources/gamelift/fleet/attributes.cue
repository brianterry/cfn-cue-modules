package fleet

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique fleet ID
	FleetId: string & =~"^fleet-\\S+"
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift Servers Fleet resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift Fleet ARN, the resource ID matches the FleetId value.
	FleetArn: string & =~"^arn:.*:fleet/[a-z]*fleet-[a-zA-Z0-9\\-]+$"
	Locations: [...#LocationConfiguration]
}
