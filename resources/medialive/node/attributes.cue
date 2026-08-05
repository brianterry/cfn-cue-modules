package node

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the Node. It is automatically assigned when the Node is created.
	Arn: string
	// The unique ID of the Node. Unique in the Cluster. The ID is the resource-id portion of the ARN.
	Id: string
	State: #NodeState
	ConnectionState: #NodeConnectionState
	// The ARN of the EC2 instance hosting the Node.
	InstanceArn: string
	// An array of IDs. Each ID is one ChannelPlacementGroup that is associated with this Node.
	ChannelPlacementGroups: [...string]
}
