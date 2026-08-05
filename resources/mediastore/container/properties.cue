package container

#Properties: {
	AccessLoggingEnabled?: bool
	ContainerName: string
	CorsPolicy?: [...#CorsRule]
	LifecyclePolicy?: string
	MetricPolicy?: #MetricPolicy
	Policy?: string
	Tags?: [...#Tag]
}

#CorsRule: {
	AllowedHeaders?: [...string]
	AllowedMethods?: [...string]
	AllowedOrigins?: [...string]
	ExposeHeaders?: [...string]
	MaxAgeSeconds?: int
}

#MetricPolicy: {
	ContainerLevelMetrics: string
	MetricPolicyRules?: [...#MetricPolicyRule]
}

#MetricPolicyRule: {
	ObjectGroup: string
	ObjectGroupName: string
}

#Tag: {
	Key: string
	Value: string
}
