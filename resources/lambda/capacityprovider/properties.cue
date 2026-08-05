package capacityprovider

import "strings"

#Properties: {
	CapacityProviderName?: string & =~"^(arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:capacity-provider:[a-zA-Z0-9-_]+)|[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(140)
	// The scaling configuration for the capacity provider.
	CapacityProviderScalingConfig?: #CapacityProviderScalingConfig
	// The instance requirements for compute resources managed by the capacity provider.
	InstanceRequirements?: #InstanceRequirements
	// The ARN of the KMS key used to encrypt the capacity provider's resources.
	KmsKeyArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$" & strings.MinRunes(0) & strings.MaxRunes(10000)
	// The permissions configuration for the capacity provider.
	PermissionsConfig: #CapacityProviderPermissionsConfig
	// Configuration for tag propagation to managed resources launched by the capacity provider.
	PropagateTags?: #PropagateTagsConfig
	// A key-value pair that provides metadata for the capacity provider.
	Tags?: [...#Tag]
	// The telemetry configuration for the capacity provider, including logging settings.
	TelemetryConfig?: #CapacityProviderTelemetryConfig
	// The VPC configuration for the capacity provider.
	VpcConfig: #CapacityProviderVpcConfig
}

#Architecture: "x86_64" | "arm64"

#CapacityProviderLoggingConfig: {
	// The name of the Amazon CloudWatch log group the capacity provider sends logs to. By default, Lambda capacity providers send logs to a default log group named ``/aws/lambda/capacity-provider/<capacity provider name>``. To use a different log group, enter an existing log group or enter a new log group name.
	LogGroup?: string & =~"[\\.\\-_/#A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(512)
	// Set this property to filter the system logs for your capacity provider that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where ``DEBUG`` is the highest level and ``WARN`` is the lowest.
	SystemLogLevel?: "DEBUG" | "INFO" | "WARN"
}

#CapacityProviderPermissionsConfig: {
	// The ARN of the IAM role that the capacity provider uses to manage compute instances and other AWS resources.
	CapacityProviderOperatorRoleArn: string & =~"^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(0) & strings.MaxRunes(10000)
}

#CapacityProviderPredefinedMetricType: "LambdaCapacityProviderAverageCPUUtilization" | "LambdaCapacityProviderAverageGPUUtilization"

#CapacityProviderScalingConfig: {
	// The maximum number of vCPUs that the capacity provider can provision across all compute instances.
	MaxVCpuCount?: int & >=2 & <=15000
	// The scaling mode that determines how the capacity provider responds to changes in demand.
	ScalingMode?: #CapacityProviderScalingMode
	// A list of target tracking scaling policies for the capacity provider.
	ScalingPolicies?: [...#TargetTrackingScalingPolicy]
}

#CapacityProviderScalingMode: "Auto" | "Manual"

#CapacityProviderState: "Pending" | "Active" | "Failed" | "Deleting"

#CapacityProviderTelemetryConfig: {
	// The capacity provider's Amazon CloudWatch Logs configuration settings.
	LoggingConfig?: #CapacityProviderLoggingConfig
}

#CapacityProviderVpcConfig: {
	// A list of security group IDs that control network access for compute instances managed by the capacity provider.
	SecurityGroupIds: [...string & =~"^sg-[0-9a-zA-Z]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)]
	// A list of subnet IDs where the capacity provider launches compute instances.
	SubnetIds: [...string & =~"^subnet-[0-9a-z]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)]
}

#InstanceRequirements: {
	// A list of EC2 instance types that the capacity provider is allowed to use. If not specified, all compatible instance types are allowed.
	AllowedInstanceTypes?: [...string & =~"^[a-zA-Z0-9\\.\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(30)]
	// A list of supported CPU architectures for compute instances. Valid values include ``x86_64`` and ``arm64``.
	Architectures?: [...#Architecture]
	// A list of EC2 instance types that the capacity provider should not use, even if they meet other requirements.
	ExcludedInstanceTypes?: [...string & =~"^[a-zA-Z0-9\\.\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(30)]
}

#PropagateTagsConfig: {
	// A list of tags to explicitly propagate to managed resources. Maximum of 40 tags.
	ExplicitTags?: [...#Tag]
	// The mode for tag propagation. Use ``Explicit`` to propagate specific tags, or ``None`` to disable propagation.
	Mode?: #PropagateTagsMode
}

#PropagateTagsMode: "None" | "Explicit"

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TargetTrackingScalingPolicy: {
	// The predefined metric type to track for scaling decisions.
	PredefinedMetricType: #CapacityProviderPredefinedMetricType
	// The target value for the metric that the scaling policy attempts to maintain through scaling actions.
	TargetValue: number & >=0
}
