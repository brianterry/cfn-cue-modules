package locationazureblob

import "strings"

#Properties: {
	// Specifies the Amazon Resource Name (ARN) of the DataSync agent that can connect with your Azure Blob Storage container. If you are setting up an agentless cross-cloud transfer, you do not need to specify a value for this parameter.
	AgentArns?: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:agent/agent-[0-9a-z]{17}$" & strings.MaxRunes(128)]
	// Specifies an access tier for the objects you're transferring into your Azure Blob Storage container.
	AzureAccessTier?: "HOT" | "COOL" | "ARCHIVE"
	// The specific authentication type that you want DataSync to use to access your Azure Blob Container.
	AzureBlobAuthenticationType: "SAS" | "NONE"
	// The URL of the Azure Blob container that was described.
	AzureBlobContainerUrl?: string & =~"^https://[A-Za-z0-9]((.|-+)?[A-Za-z0-9]){0,252}/[a-z0-9](-?[a-z0-9]){2,62}$" & strings.MaxRunes(325)
	AzureBlobSasConfiguration?: #AzureBlobSasConfiguration
	// Specifies a blob type for the objects you're transferring into your Azure Blob Storage container.
	AzureBlobType?: "BLOCK"
	CustomSecretConfig?: #CustomSecretConfig
	// The subdirectory in the Azure Blob Container that is used to read data from the Azure Blob Source Location.
	Subdirectory?: string & =~"^[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}\\p{C}]*$" & strings.MaxRunes(1024)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AzureBlobSasConfiguration: {
	// Specifies the shared access signature (SAS) token, which indicates the permissions DataSync needs to access your Azure Blob Storage container.
	AzureBlobSasToken: string & =~"(^.+$)" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#CmkSecretConfig: {
	// Specifies the ARN for the customer-managed AWS KMS key used to encrypt the secret specified for SecretArn. DataSync provides this key to AWS Secrets Manager.
	KmsKeyArn?: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):kms:[a-z-0-9]+:[0-9]{12}:key/.*|)$" & strings.MaxRunes(2048)
	// Specifies the ARN for an AWS Secrets Manager secret, managed by DataSync.
	SecretArn?: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):secretsmanager:[a-z-0-9]+:[0-9]{12}:secret:.*|)$" & strings.MaxRunes(2048)
}

#CustomSecretConfig: {
	// Specifies the ARN for the AWS Identity and Access Management role that DataSync uses to access the secret specified for SecretArn.
	SecretAccessRoleArn: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*|)$" & strings.MaxRunes(2048)
	// Specifies the ARN for a customer created AWS Secrets Manager secret.
	SecretArn: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):secretsmanager:[a-z-0-9]+:[0-9]{12}:secret:.*|)$" & strings.MaxRunes(2048)
}

#ManagedSecretConfig: {
	// Specifies the ARN for an AWS Secrets Manager secret.
	SecretArn: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):secretsmanager:[a-z-0-9]+:[0-9]{12}:secret:.*|)$" & strings.MaxRunes(2048)
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
