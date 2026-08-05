package room

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Room ARN is automatically generated on creation and assigned as the unique identifier.
	Arn: string & =~"^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The system-generated ID of the room.
	Id: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(12) & strings.MaxRunes(12)
}
