package queue

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	QueueId: string & =~"^queue-[0-9a-f]{32}$"
	Arn: string & =~"^arn:*"
}
