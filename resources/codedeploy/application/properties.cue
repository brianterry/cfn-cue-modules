package application

#Properties: {
	// A name for the application. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the application name.
	ApplicationName?: string
	// The compute platform that CodeDeploy deploys the application to.
	ComputePlatform?: string
	// The metadata that you apply to CodeDeploy applications to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define. 
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
