package jobqueue

import "strings"

#Properties: {
	ComputeEnvironmentOrder?: [...#ComputeEnvironmentOrder]
	JobQueueName?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	JobQueueType?: string
	JobStateTimeLimitActions?: [...#JobStateTimeLimitAction]
	Priority: int & >=0 & <=1000
	SchedulingPolicyArn?: #ResourceArn
	ServiceEnvironmentOrder?: [...#ServiceEnvironmentOrder]
	State?: "DISABLED" | "ENABLED"
	// A key-value pair to associate with a resource.
	Tags?: {...}
}

#ComputeEnvironmentOrder: {
	ComputeEnvironment: string
	Order: int
}

#JobStateTimeLimitAction: {
	Action: "CANCEL" | "TERMINATE"
	MaxTimeSeconds: int & >=600 & <=86400
	Reason: string
	State: "RUNNABLE"
}

#ResourceArn: string & =~"arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"

#ServiceEnvironmentOrder: {
	Order: int
	ServiceEnvironment: string
}
