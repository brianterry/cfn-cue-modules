package deployment

#Properties: {
	// The application ID.
	ApplicationId: string
	// The configuration profile ID.
	ConfigurationProfileId: string
	// The configuration version to deploy. If deploying an AWS AppConfig hosted configuration version, you can specify either the version number or version label. For all other configurations, you must specify the version number.
	ConfigurationVersion: string
	// The deployment strategy ID.
	DeploymentStrategyId: string
	// A description of the deployment.
	Description?: string
	DynamicExtensionParameters?: [...#DynamicExtensionParameters]
	// The environment ID.
	EnvironmentId: string
	// The AWS Key Management Service key identifier (key ID, key alias, or key ARN) provided when the resource was created or updated.
	KmsKeyIdentifier?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#DynamicExtensionParameters: {
	ExtensionReference?: string
	ParameterName?: string
	ParameterValue?: string
}

#Tag: {
	// The key-value string map. The valid character set is [a-zA-Z1-9+-=._:/]. The tag key can be up to 128 characters and must not start with aws:.
	Key?: string
	// The tag value can be up to 256 characters.
	Value?: string
}
