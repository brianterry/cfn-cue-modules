package resourcespecificlogging

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique Id for a Target (TargetType:TargetName), this will be internally built to serve as primary identifier for a log target.
	TargetId: string & =~"[a-zA-Z0-9.:\\s_\\-]+" & strings.MinRunes(13) & strings.MaxRunes(140)
}
