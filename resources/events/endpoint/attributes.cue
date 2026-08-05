package endpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:endpoint\\/[/\\.\\-_A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	EndpointId: string & =~"^[A-Za-z0-9\\-]+[\\.][A-Za-z0-9\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	EndpointUrl: string & =~"^(https://)?[\\.\\-a-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	State: "ACTIVE" | "CREATING" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED"
	StateReason: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(512)
}
