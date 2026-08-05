package group

#Properties: {
	InitialVersion?: #GroupVersion
	Name: string
	RoleArn?: string
	Tags?: {...}
}

#GroupVersion: {
	ConnectorDefinitionVersionArn?: string
	CoreDefinitionVersionArn?: string
	DeviceDefinitionVersionArn?: string
	FunctionDefinitionVersionArn?: string
	LoggerDefinitionVersionArn?: string
	ResourceDefinitionVersionArn?: string
	SubscriptionDefinitionVersionArn?: string
}
