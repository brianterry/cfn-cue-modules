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

#CertificateList: [...#Certificate]

#CertificateLocation: {
	// Secrets Manager secret ARN.
	SecretArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=.@-]+$"
}

#CodeInterpreterArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):code-interpreter(-custom)?\\/(aws\\.codeinterpreter\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"

#CodeInterpreterId: string & =~"^(aws\\.codeinterpreter\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"

#CodeInterpreterNetworkConfiguration: {
	NetworkMode: #CodeInterpreterNetworkMode
	VpcConfig?: #VpcConfig
}

#CodeInterpreterNetworkMode: "PUBLIC" | "SANDBOX" | "VPC"

#CodeInterpreterStatus: "CREATING" | "CREATE_FAILED" | "READY" | "DELETING" | "DELETE_FAILED" | "DELETED"

#CodeInterpreterSummaries: [...#CodeInterpreterSummary]

#CodeInterpreterSummary: {
	CodeInterpreterArn: #CodeInterpreterArn
	CodeInterpreterId: #CodeInterpreterId
	CreatedAt: string
	Description?: #Description
	LastUpdatedAt?: string
	Name?: #SandboxName
	Status: #CodeInterpreterStatus
}

#Description: string

#RoleArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):iam::[0-9]{12}:role/.+$"

#SandboxName: string

#SecurityGroupId: string & =~"^sg-[0-9a-zA-Z]{8,17}$"

#SecurityGroups: [...#SecurityGroupId]

#SubnetId: string & =~"^subnet-[0-9a-zA-Z]{8,17}$"

#Subnets: [...#SubnetId]

#TagsMap: {...}

#VpcConfig: {
	SecurityGroups: #SecurityGroups
	Subnets: #Subnets
}
