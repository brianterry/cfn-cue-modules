package repositorylink

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the CodeStarConnection. The ARN is used as the connection reference when the connection is shared between AWS services.
	ConnectionArn: string & =~"arn:(aws|aws-us-gov|aws-cn):.+:.+:[0-9]{12}:.+"
	// The ARN of the KMS key that the customer can optionally specify to use to encrypt RepositoryLink properties. If not specified, a default key will be used.
	EncryptionKeyArn?: string & =~"arn:(aws|aws-us-gov|aws-cn):.+:.+:[0-9]{12}:.+"
	// the ID of the entity that owns the repository.
	OwnerId: string & =~"[a-za-z0-9_\\.-]+"
	// The repository for which the link is being created.
	RepositoryName: string & =~"[a-za-z0-9_\\.-]+"
	// Specifies the tags applied to a RepositoryLink.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, , ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, , ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
