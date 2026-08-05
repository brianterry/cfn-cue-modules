package migrationproject

import "strings"

#Properties: {
	// The optional description of the migration project.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes an instance profile arn for the migration project. For read
	InstanceProfileArn?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes an instance profile identifier for the migration project. For create
	InstanceProfileIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes an instance profile name for the migration project. For read
	InstanceProfileName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes a creating time of the migration project.
	MigrationProjectCreationTime?: string & strings.MinRunes(1) & strings.MaxRunes(40)
	// The property describes an identifier for the migration project. It is used for describing/deleting/modifying can be name/arn
	MigrationProjectIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes a name to identify the migration project.
	MigrationProjectName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes schema conversion application attributes for the migration project.
	SchemaConversionApplicationAttributes?: {
		S3BucketPath?: string
		S3BucketRoleArn?: string
	}
	// The property describes source data provider descriptors for the migration project.
	SourceDataProviderDescriptors?: [...#DataProviderDescriptor]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The property describes target data provider descriptors for the migration project.
	TargetDataProviderDescriptors?: [...#DataProviderDescriptor]
	// The property describes transformation rules for the migration project.
	TransformationRules?: string
}

#DataProviderDescriptor: {
	DataProviderArn?: string
	DataProviderIdentifier?: string
	DataProviderName?: string
	SecretsManagerAccessRoleArn?: string
	SecretsManagerSecretId?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, , and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, , and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
