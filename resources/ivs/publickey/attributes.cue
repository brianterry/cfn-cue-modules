package publickey

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Key-pair identifier.
	Arn: string & =~"^arn:aws:ivs:[a-z0-9-]+:[0-9]+:public-key/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Key-pair identifier.
	Fingerprint: string
}
