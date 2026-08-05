package repositoryassociation

import "strings"

#Properties: {
	// The name of the S3 bucket associated with an associated S3 repository. It must start with `codeguru-reviewer-`.
	BucketName?: string & =~"^\\S(.*\\S)?$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection.
	ConnectionArn?: string & =~"arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+" & strings.MinRunes(0) & strings.MaxRunes(256)
	// Name of the repository to be associated.
	Name: string & =~"^\\S[\\w.-]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The owner of the repository. For a Bitbucket repository, this is the username for the account that owns the repository.
	Owner?: string & =~"^\\S(.*\\S)?$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The tags associated with a repository association.
	Tags?: [...#Tag]
	// The type of repository to be associated.
	Type: "CodeCommit" | "Bitbucket" | "GitHubEnterpriseServer" | "S3Bucket"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. The allowed characters across services are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. The allowed characters across services are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
