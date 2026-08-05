package targetgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Names (ARNs) of the load balancers that route traffic to this target group.
	LoadBalancerArns: [...string]
	// The ARN of the Target Group
	TargetGroupArn: string
	// The name of the target group.
	TargetGroupName: string
	// The full name of the target group.
	TargetGroupFullName: string
}
