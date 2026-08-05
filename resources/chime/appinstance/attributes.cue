package appinstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Number (ARN) of the AppInstance.
	AppInstanceArn: string & strings.MinRunes(5) & strings.MaxRunes(1600)
	// The time at which an AppInstance was created. In epoch milliseconds.
	CreatedTimestamp: number
	// The time an AppInstance was last updated. In epoch milliseconds.
	LastUpdatedTimestamp: number
}
