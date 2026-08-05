package locationfsxontap

import "strings"

#Properties: {
	// The ARNs of the security groups that are to use to configure the FSx ONTAP file system.
	SecurityGroupArns: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/sg-[a-f0-9]+$" & strings.MaxRunes(128)]
	// The Amazon Resource Name (ARN) for the FSx ONTAP SVM.
	StorageVirtualMachineArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]+:[0-9]{12}:storage-virtual-machine/fs-[0-9a-f]+/svm-[0-9a-f]{17,}$" & strings.MaxRunes(162)
	// A subdirectory in the location's path.
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

#NFS: {
	MountOptions: #NfsMountOptions
}

#NfsMountOptions: {
	// The specific NFS version that you want DataSync to use to mount your NFS share.
	Version?: "AUTOMATIC" | "NFS3" | "NFS4_0" | "NFS4_1"
}

#Protocol: {
	NFS?: #NFS
	SMB?: #SMB
}

#SMB: {
	CmkSecretConfig?: #CmkSecretConfig
	CustomSecretConfig?: #CustomSecretConfig
	// The name of the Windows domain that the SMB server belongs to.
	Domain?: string & =~"^([A-Za-z0-9]+[A-Za-z0-9-.]*)*[A-Za-z0-9-]*[A-Za-z0-9]$" & strings.MaxRunes(253)
	ManagedSecretConfig?: #ManagedSecretConfig
	MountOptions: #SmbMountOptions
	// The password of the user who can mount the share and has the permissions to access files and folders in the SMB share.
	Password?: string & =~"^.{0,104}$" & strings.MaxRunes(104)
	// The user who can mount the share, has the permissions to access files and folders in the SMB share.
	User: string & strings.MaxRunes(104)
}

#SmbMountOptions: {
	// The specific SMB version that you want DataSync to use to mount your SMB share.
	Version?: "AUTOMATIC" | "SMB2" | "SMB3"
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
