package pipe

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:aws([a-z]|\\-)*:([a-zA-Z0-9\\-]+):([a-z]|\\d|\\-)*:([0-9]{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	CreationTime: string
	CurrentState: #PipeState
	LastModifiedTime: string
	StateReason: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(512)
}
