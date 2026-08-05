package version

import "strings"

#Properties: {
	// Only publish a version if the hash value matches the value that's specified. Use this option to avoid publishing a version if the function code has changed since you last updated it. Updates are not supported for this property.
	CodeSha256?: string
	// A description for the version to override the description in the function configuration. Updates are not supported for this property.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// The name of the Lambda function.
	FunctionName: string & =~"^(arn:(aws[a-zA-Z-]*)?:lambda:)?((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MinRunes(1) & strings.MaxRunes(140)
	// The scaling configuration to apply to the function, including minimum and maximum execution environment limits.
	FunctionScalingConfig?: #FunctionScalingConfig
	// Specifies a provisioned concurrency configuration for a function's version. Updates are not supported for this property.
	ProvisionedConcurrencyConfig?: #ProvisionedConcurrencyConfiguration
	// Specifies the runtime management configuration of a function. Displays runtimeVersionArn only for Manual.
	RuntimePolicy?: #RuntimePolicy
}

#FunctionScalingConfig: {
	// The maximum number of execution environments that can be provisioned for the function.
	MaxExecutionEnvironments?: int & >=0
	// The minimum number of execution environments to maintain for the function.
	MinExecutionEnvironments?: int & >=0
}

#ProvisionedConcurrencyConfiguration: {
	// The amount of provisioned concurrency to allocate for the version.
	ProvisionedConcurrentExecutions: int
}

#RuntimePolicy: {
	// The ARN of the runtime the function is configured to use. If the runtime update mode is manual, the ARN is returned, otherwise null is returned.
	RuntimeVersionArn?: string & =~"^arn:(aws[a-zA-Z-]*):lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}::runtime:.+$" & strings.MinRunes(26) & strings.MaxRunes(2048)
	// The runtime update mode.
	UpdateRuntimeOn: string
}
