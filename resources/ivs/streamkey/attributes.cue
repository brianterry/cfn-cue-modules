package streamkey

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Stream Key ARN is automatically generated on creation and assigned as the unique identifier.
	Arn: string & =~"^arn:aws:ivs:[a-z0-9-]+:[0-9]+:stream-key/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Stream-key value.
	Value: string
}
