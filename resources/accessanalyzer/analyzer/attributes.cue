package analyzer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name (ARN) of the analyzer
	Arn: string & =~"^arn:[^:]+:access-analyzer(-beta|-gamma)?:[^:]*:[^:]*:analyzer/.+$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}
