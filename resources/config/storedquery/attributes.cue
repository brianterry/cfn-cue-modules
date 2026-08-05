package storedquery

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	QueryId: string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(36)
	QueryArn: string & strings.MinRunes(1) & strings.MaxRunes(500)
}
