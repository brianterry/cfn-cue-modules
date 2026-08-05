package lambdahook

import "strings"

#Properties: {
	// The typename alias for the hook.
	Alias: string & =~"^(?!(?i)aws)[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"
	// Whether to automatically update the extension in this account and Region when a new minor version is published by the extension publisher.
	AutoUpdate?: bool
	// The execution role ARN assumed by Hooks to invoke Lambda.
	ExecutionRole: #Role
	// Attribute to specify CloudFormation behavior on hook failure.
	FailureMode: "FAIL" | "WARN"
	// Attribute to specify which stacks this hook applies to or should get invoked for
	HookStatus: "ENABLED" | "DISABLED"
	// Amazon Resource Name (ARN), Partial ARN, name, version, or alias of the Lambda function to invoke with this hook.
	LambdaFunction: string & =~"(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?(-iso([a-z])?)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?" & strings.MinRunes(1) & strings.MaxRunes(170)
	// Contains logging configuration information for the hook.
	LoggingConfig?: #LoggingConfig
	// Filters to allow hooks to target specific stack attributes
	StackFilters?: {
		FilteringCriteria: "ALL" | "ANY"
		StackNames?: {
			Exclude?: [...#StackName]
			Include?: [...#StackName]
		}
		StackRoles?: {
			Exclude?: [...#StackRole]
			Include?: [...#StackRole]
		}
	}
	// Attribute to specify which targets should invoke the hook
	TargetFilters?: {
		Actions?: [...#Action]
		InvocationPoints?: [...#InvocationPoint]
		TargetNames?: [...#TargetName]
	} | {
		Targets: [...#HookTarget]
	}
	// Which operations should this Hook run against? Resource changes, stacks or change sets.
	TargetOperations: [...#TargetOperation]
}

#Action: "CREATE" | "UPDATE" | "DELETE"

#HookTarget: {
	Action: #Action
	InvocationPoint: #InvocationPoint
	TargetName: #TargetName
}

#InvocationPoint: "PRE_PROVISION"

#LoggingConfig: {
	// The Amazon CloudWatch Logs group to which CloudFormation sends error logging information when invoking the extension's handlers.
	LogGroupName: string & =~"^[\\.\\-_/#A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The ARN of the role that CloudFormation should assume when sending log entries to CloudWatch Logs.
	LogRoleArn: string & =~"arn:.+:iam::[0-9]{12}:role/.+" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Role: string & =~"arn:.+:iam::[0-9]{12}:role/.+" & strings.MaxRunes(256)

#StackName: string & =~"^[a-zA-Z*?][-a-zA-Z0-9*?]*$" & strings.MaxRunes(128)

#StackRole: string & =~"arn:.+:iam::[0-9]{12}:role/.+" | string & =~"^(arn:.+:iam::((?!\\*|\\?)[0-9]{12}|(?=.*\\*)[0-9*?]{1,12}|[0-9?]{12}):role/.+|\\*)$"

#TargetName: string & =~"^(?!.*\\*\\?).*$" & strings.MinRunes(1) & strings.MaxRunes(256)

#TargetOperation: "RESOURCE" | "STACK" | "CHANGE_SET" | "CLOUD_CONTROL"
