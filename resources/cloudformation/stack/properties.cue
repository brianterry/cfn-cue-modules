package stack

import "strings"

#Properties: {
	Capabilities?: [..."CAPABILITY_IAM" | "CAPABILITY_NAMED_IAM" | "CAPABILITY_AUTO_EXPAND"]
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	DisableRollback?: bool
	EnableTerminationProtection?: bool
	NotificationARNs?: [...string]
	Parameters?: {...}
	RoleARN?: string
	StackName: string
	StackPolicyBody?: {...}
	StackPolicyURL?: string
	StackStatusReason?: string
	Tags?: [...#Tag]
	TemplateBody?: {...}
	TemplateURL?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	TimeoutInMinutes?: int & >=1
}

#Output: {
	Description?: string
	ExportName?: string
	OutputKey?: string
	OutputValue?: string
}

#Tag: {
	Key: string
	Value: string
}
