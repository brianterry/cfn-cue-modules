package enabledbaseline

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	EnabledBaselineIdentifier: string & =~"^arn:aws[0-9a-zA-Z_\\-:\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}
