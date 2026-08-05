package namespace

import "strings"

#Properties: {
	// The ID of the AWS Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret. You can only use this parameter if manageAdminPassword is true.
	AdminPasswordSecretKmsKeyId?: string
	// The password associated with the admin user for the namespace that is being created. Password must be at least 8 characters in length, should be any printable ASCII character. Must contain at least one lowercase letter, one uppercase letter and one decimal digit. You can't use adminUserPassword if manageAdminPassword is true.
	AdminUserPassword?: string & strings.MinRunes(8) & strings.MaxRunes(64)
	// The user name associated with the admin user for the namespace that is being created. Only alphanumeric characters and underscores are allowed. It should start with an alphabet.
	AdminUsername?: string & =~"[a-zA-Z][a-zA-Z_0-9+.@-]*"
	// The database name associated for the namespace that is being created. Only alphanumeric characters and underscores are allowed. It should start with an alphabet.
	DbName?: string & =~"[a-zA-Z][a-zA-Z_0-9+.@-]*" & strings.MaxRunes(127)
	// The default IAM role ARN for the namespace that is being created.
	DefaultIamRoleArn?: string
	// The name of the namespace the source snapshot was created from. Please specify the name if needed before deleting namespace
	FinalSnapshotName?: string & =~"[a-z][a-z0-9]*(-[a-z0-9]+)*" & strings.MaxRunes(255)
	// The number of days to retain automated snapshot in the destination region after they are copied from the source region. If the value is -1, the manual snapshot is retained indefinitely. The value must be either -1 or an integer between 1 and 3,653.
	FinalSnapshotRetentionPeriod?: int
	// A list of AWS Identity and Access Management (IAM) roles that can be used by the namespace to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. The Default role limit for each request is 10.
	IamRoles?: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
	// The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the namespace.
	KmsKeyId?: string
	// The collection of log types to be exported provided by the customer. Should only be one of the three supported log types: userlog, useractivitylog and connectionlog
	LogExports?: [...#LogExport]
	// If true, Amazon Redshift uses AWS Secrets Manager to manage the namespace's admin credentials. You can't use adminUserPassword if manageAdminPassword is true. If manageAdminPassword is false or not set, Amazon Redshift uses adminUserPassword for the admin user account's password.
	ManageAdminPassword?: bool
	// A unique identifier for the namespace. You use this identifier to refer to the namespace for any subsequent namespace operations such as deleting or modifying. All alphabetical characters must be lower case. Namespace name should be unique for all namespaces within an AWS account.
	NamespaceName: string & =~"^[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// The resource policy document that will be attached to the namespace.
	NamespaceResourcePolicy?: {...}
	// The ARN for the Redshift application that integrates with IAM Identity Center.
	RedshiftIdcApplicationArn?: string
	// The snapshot copy configurations for the namespace.
	SnapshotCopyConfigurations?: [...#SnapshotCopyConfiguration]
	// The list of tags for the namespace.
	Tags?: [...#Tag]
}

#LogExport: "useractivitylog" | "userlog" | "connectionlog"

#Namespace: {
	AdminPasswordSecretArn?: string
	AdminPasswordSecretKmsKeyId?: string
	AdminUsername?: string
	CreationDate?: string
	DbName?: string & =~"[a-zA-Z][a-zA-Z_0-9+.@-]*"
	DefaultIamRoleArn?: string
	IamRoles?: [...string & strings.MinRunes(0) & strings.MaxRunes(512)]
	KmsKeyId?: string
	LogExports?: [...#LogExport]
	NamespaceArn?: string
	NamespaceId?: string
	NamespaceName?: string & =~"^[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	Status?: #NamespaceStatus
}

#NamespaceStatus: "AVAILABLE" | "MODIFYING" | "DELETING"

#SnapshotCopyConfiguration: {
	DestinationKmsKeyId?: string
	DestinationRegion: string
	SnapshotRetentionPeriod?: int
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
