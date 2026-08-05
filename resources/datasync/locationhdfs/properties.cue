package locationhdfs

import "strings"

#Properties: {
	// ARN(s) of the agent(s) to use for an HDFS location.
	AgentArns: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:agent/agent-[0-9a-z]{17}$" & strings.MaxRunes(128)]
	// The authentication mode used to determine identity of user.
	AuthenticationType: "SIMPLE" | "KERBEROS"
	// Size of chunks (blocks) in bytes that the data is divided into when stored in the HDFS cluster.
	BlockSize?: int & >=1048576 & <=1073741824
	CustomSecretConfig?: #CustomSecretConfig
	// The Base64 string representation of the Keytab file.
	KerberosKeytab?: string & strings.MaxRunes(87384)
	// The string representation of the Krb5Conf file, or the presigned URL to access the Krb5.conf file within an S3 bucket.
	KerberosKrb5Conf?: string & strings.MaxRunes(174764)
	// The unique identity, or principal, to which Kerberos can assign tickets.
	KerberosPrincipal?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The identifier for the Key Management Server where the encryption keys that encrypt data inside HDFS clusters are stored.
	KmsKeyProviderUri?: string & =~"^kms:\\/\\/http[s]?@(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])(;(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9]))*:[0-9]{1,5}\\/kms$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// An array of Name Node(s) of the HDFS location.
	NameNodes: [...#NameNode]
	QopConfiguration?: #QopConfiguration
	// Number of copies of each block that exists inside the HDFS cluster.
	ReplicationFactor?: int & >=1 & <=512
	// The user name that has read and write permissions on the specified HDFS cluster.
	SimpleUser?: string & =~"^[_.A-Za-z0-9][-_.A-Za-z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The subdirectory in HDFS that is used to read data from the HDFS source location or write data to the HDFS destination.
	Subdirectory?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$" & strings.MaxRunes(4096)
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

#NameNode: {
	// The DNS name or IP address of the Name Node in the customer's on premises HDFS cluster.
	Hostname: string & =~"^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])$" & strings.MaxRunes(255)
	// The port on which the Name Node is listening on for client requests.
	Port: int & >=1 & <=65536
}

#QopConfiguration: {
	// Configuration for Data Transfer Protection.
	DataTransferProtection?: "AUTHENTICATION" | "INTEGRITY" | "PRIVACY" | "DISABLED"
	// Configuration for RPC Protection.
	RpcProtection?: "AUTHENTICATION" | "INTEGRITY" | "PRIVACY" | "DISABLED"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
