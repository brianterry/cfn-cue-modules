package rule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Rule Arn is unique for each rule.
	Arn: string & strings.MinRunes(0) & strings.MaxRunes(1011)
	// The unique ID of the retention rule.
	Identifier: string & =~"[0-9a-zA-Z]{11}"
	// The lock state for the retention rule.
	LockState: string & =~"locked|pending_unlock|unlocked"
}
