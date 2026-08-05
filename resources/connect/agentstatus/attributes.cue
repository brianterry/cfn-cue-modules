package agentstatus

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the agent status.
	AgentStatusArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/agent-state/[-a-zA-Z0-9]*$"
	// Last modified region.
	LastModifiedRegion: string & =~"[a-z]{2}(-[a-z]+){1,2}(-[0-9])?"
	// Last modified time.
	LastModifiedTime: number
}
