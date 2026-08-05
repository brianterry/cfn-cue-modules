package endpoint

import "strings"

#Properties: {
	// The configuration overrides for the managed endpoint.
	ConfigurationOverrides?: #ConfigurationOverrides
	// The execution role ARN for the managed endpoint.
	ExecutionRoleArn: string
	// The name of the managed endpoint.
	Name?: string & =~"[0-9A-Za-z][A-Za-z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The Amazon EMR release label.
	ReleaseLabel: string & =~"[A-Za-z0-9._/-]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The idle timeout in minutes for sessions on the managed endpoint.
	SessionIdleTimeoutInMinutes?: int & >=1 & <=1440
	// An array of key-value pairs to apply to this managed endpoint.
	Tags?: [...#Tag]
	// The type of the managed endpoint.
	Type: string
	// The ID of the virtual cluster for which the managed endpoint is created.
	VirtualClusterId: string
}

#Certificate: {
	CertificateArn?: string
	CertificateData?: string
}

#CloudWatchMonitoringConfiguration: {
	LogGroupName: string
	LogStreamNamePrefix?: string
}

#ConfigurationOverrides: {
	ApplicationConfiguration?: [...#EMREKSConfiguration]
	MonitoringConfiguration?: #MonitoringConfiguration
}

#ContainerLogRotationConfiguration: {
	MaxFilesToKeep: int
	RotationSize: string
}

#EMREKSConfiguration: {
	Classification: string
	Configurations?: [...#EMREKSConfiguration]
	Properties?: {...}
}

#MonitoringConfiguration: {
	CloudWatchMonitoringConfiguration?: #CloudWatchMonitoringConfiguration
	ContainerLogRotationConfiguration?: #ContainerLogRotationConfiguration
	PersistentAppUI?: "ENABLED" | "DISABLED"
	S3MonitoringConfiguration?: #S3MonitoringConfiguration
}

#S3MonitoringConfiguration: {
	LogUri: string
}

#Tag: {
	// A user-defined key, which is the minimum required information for a valid tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A user-defined value, which is optional in a tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
