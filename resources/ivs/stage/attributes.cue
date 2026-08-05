package stage

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Stage ARN is automatically generated on creation and assigned as the unique identifier.
	Arn: string & =~"^arn:aws[-a-z]*:ivs:[a-z0-9-]+:[0-9]+:stage/[a-zA-Z0-9-]+$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// ID of the active session within the stage.
	ActiveSessionId: string & strings.MinRunes(0) & strings.MaxRunes(128)
}
