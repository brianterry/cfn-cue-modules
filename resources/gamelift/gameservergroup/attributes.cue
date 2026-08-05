package gameservergroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A generated unique ID for the game server group.
	GameServerGroupArn: #GameServerGroupArn
	// A generated unique ID for the EC2 Auto Scaling group that is associated with this game server group.
	AutoScalingGroupArn: #AutoScalingGroupArn
}
