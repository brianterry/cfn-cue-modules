package encoderconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Encoder configuration identifier.
	Arn: string & =~"^arn:aws:ivs:[a-z0-9-]+:[0-9]+:encoder-configuration/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}
