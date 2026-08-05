package microvmimage

import "strings"

#Properties: {
	AdditionalOsCapabilities: [..."ALL"]
	// ARN of the base MicroVM image.
	BaseImageArn: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Specific version of the base MicroVM image to use.
	BaseImageVersion: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// ARN of the IAM build role.
	BuildRoleArn: string & =~"^arn:aws[a-zA-Z-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"
	// Code artifact for the active MicroVM image.
	CodeArtifact: #CodeArtifact
	CpuConfigurations: [...#CpuConfiguration]
	// Human-readable description of the MicroVM image and its purpose.
	Description: string
	EgressNetworkConnectors: [...string]
	// Environment variables to set in the container during the snapshot build.
	EnvironmentVariables: [...#EnvironmentVariable]
	Hooks: #Hooks
	// Configuration for MicroVM image logging.
	Logging: #Logging
	// Unique name for the MicroVM image within the account.
	Name: string & =~"^[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Resources: [...#Resources]
	// Key-value pairs to associate with the MicroVM image for organization and management.
	Tags?: [...#Tag]
}

#CloudWatchLogging: {
	LogGroup?: string & =~"^[a-zA-Z0-9_\\-/.#]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	LogStream?: string & =~"^[^:*]*$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#CodeArtifact: {
	Uri: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#CpuConfiguration: {
	Architecture: "ARM_64"
}

#EnvironmentVariable: {
	Key: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(4096)
}

#Hooks: {
	MicrovmHooks?: #MicrovmHooks
	MicrovmImageHooks?: #MicrovmImageHooks
	Port?: int & >=1 & <=65535
}

#Logging: {
	CloudWatch?: #CloudWatchLogging
	Disabled?: bool
}

#MicrovmHooks: {
	Resume?: #HookState
	ResumeTimeoutInSeconds?: int & >=1 & <=60
	Run?: #HookState
	RunTimeoutInSeconds?: int & >=1 & <=60
	Suspend?: #HookState
	SuspendTimeoutInSeconds?: int & >=1 & <=60
	Terminate?: #HookState
	TerminateTimeoutInSeconds?: int & >=1 & <=60
}

#MicrovmImageHooks: {
	Ready?: #HookState
	ReadyTimeoutInSeconds?: int & >=1 & <=3600
	Validate?: #HookState
	ValidateTimeoutInSeconds?: int & >=1 & <=3600
}

#Resources: {
	MinimumMemoryInMiB: int
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
