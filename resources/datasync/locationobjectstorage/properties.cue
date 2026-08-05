package locationobjectstorage

import "strings"

#Properties: {
	// Optional. The access key is used if credentials are required to access the self-managed object storage server.
	AccessKey?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// Specifies the Amazon Resource Names (ARNs) of the DataSync agents that can connect with your object storage system. If you are setting up an agentless cross-cloud transfer, you do not need to specify a value for this parameter.
	AgentArns?: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:agent/agent-[0-9a-z]{17}$" & strings.MaxRunes(128)]
	// The name of the bucket on the self-managed object storage server.
	BucketName?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	CustomSecretConfig?: #CustomSecretConfig
	// Optional. The secret key is used if credentials are required to access the self-managed object storage server.
	SecretKey?: string & =~"^.+$" & strings.MinRunes(8) & strings.MaxRunes(200)
	// X.509 PEM content containing a certificate authority or chain to trust.
	ServerCertificate?: string & strings.MaxRunes(32768)
	// The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server.
	ServerHostname?: string & =~"^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])$" & strings.MaxRunes(255)
	// The port that your self-managed server accepts inbound network traffic on.
	ServerPort?: int & >=1 & <=65536
	// The protocol that the object storage server uses to communicate.
	ServerProtocol?: "HTTPS" | "HTTP"
	// The subdirectory in the self-managed object storage server that is used to read data from.
	Subdirectory?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]*$" & strings.MaxRunes(4096)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
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
