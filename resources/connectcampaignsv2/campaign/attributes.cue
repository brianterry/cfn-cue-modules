package campaign

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Connect Campaign Arn
	Arn: string & =~"^arn:aws[-a-z0-9]*:connect-campaigns:[-a-z0-9]*:[0-9]{12}:campaign/[-a-zA-Z0-9]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
