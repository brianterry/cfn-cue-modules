package storageconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Storage Configuration ARN is automatically generated on creation and assigned as the unique identifier.
	Arn: string & =~"^arn:aws[-a-z]*:ivs:[a-z0-9-]+:[0-9]+:storage-configuration/[a-zA-Z0-9-]+$" & strings.MinRunes(0) & strings.MaxRunes(128)
}
