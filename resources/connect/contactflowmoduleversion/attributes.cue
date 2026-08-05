package contactflowmoduleversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the contact flow module version (ARN).
	ContactFlowModuleVersionARN: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]+:[0-9]{12}:instance/[-a-zA-Z0-9]+/flow-module/[-a-zA-Z0-9]+:[0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// The version number of this revision
	Version: int
	// Indicates the checksum value of the latest published flow module content
	FlowModuleContentSha256: string & =~"^[a-zA-Z0-9]{64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
}
