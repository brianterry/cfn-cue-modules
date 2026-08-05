package appinstancebot

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the AppInstanceBot.
	AppInstanceBotArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(5) & strings.MaxRunes(1600)
	// The time at which the AppInstanceBot was created. In epoch milliseconds.
	CreatedTimestamp: number
	// The time at which the AppInstanceBot was last updated. In epoch milliseconds.
	LastUpdatedTimestamp: number
}
