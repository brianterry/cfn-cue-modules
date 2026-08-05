package codeinterpretercustom

#Properties: {
	// List of root CA certificates in PEM format.
	Certificates?: #CertificateList
	// The description of the code interpreter.
	Description?: #Description
	// The ARN of the IAM role that the code interpreter uses to access resources.
	ExecutionRoleArn?: #RoleArn
	// The name of the code interpreter.
	Name: #SandboxName
	// Network configuration for code interpreter.
	NetworkConfiguration: #CodeInterpreterNetworkConfiguration
	Tags?: #TagsMap
}

#Certificate: {
	// Certificate location in Secrets Manager.
	CertificateLocation: #CertificateLocation
}

#CertificateLocation: {
	// Secrets Manager secret ARN.
	SecretArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=.@-]+$"
}

#CodeInterpreterNetworkConfiguration: {
	NetworkMode: #CodeInterpreterNetworkMode
	VpcConfig?: #VpcConfig
}

#CodeInterpreterSummary: {
	CodeInterpreterArn: #CodeInterpreterArn
	CodeInterpreterId: #CodeInterpreterId
	CreatedAt: string
	Description?: #Description
	LastUpdatedAt?: string
	Name?: #SandboxName
	Status: #CodeInterpreterStatus
}

#VpcConfig: {
	SecurityGroups: #SecurityGroups
	Subnets: #Subnets
}
