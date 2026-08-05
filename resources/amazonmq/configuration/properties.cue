package configuration

#Properties: {
	// The authentication strategy associated with the configuration. The default is SIMPLE.
	AuthenticationStrategy?: string
	// The base64-encoded XML configuration.
	Data?: string
	// The description of the configuration.
	Description?: string
	// The type of broker engine. Note: Currently, Amazon MQ only supports ACTIVEMQ for creating and editing broker configurations.
	EngineType: string
	// The version of the broker engine.
	EngineVersion?: string
	// The name of the configuration.
	Name: string
	// Create tags when creating the configuration.
	Tags?: [...#TagsEntry]
}

#TagsEntry: {
	Key: string
	Value: string
}
