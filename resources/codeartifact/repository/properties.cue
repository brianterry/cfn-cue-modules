package repository

import "strings"

#Properties: {
	// A text description of the repository.
	Description?: string & strings.MaxRunes(1000)
	// The name of the domain that contains the repository.
	DomainName: string & =~"^([a-z][a-z0-9\\-]{0,48}[a-z0-9])$" & strings.MinRunes(2) & strings.MaxRunes(50)
	// A list of external connections associated with the repository.
	ExternalConnections?: [...string]
	// The access control resource policy on the provided repository.
	PermissionsPolicyDocument?: {...}
	// The name of the repository.
	RepositoryName: string & =~"^([A-Za-z0-9][A-Za-z0-9._\\-]{1,99})$" & strings.MinRunes(2) & strings.MaxRunes(100)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// A list of upstream repositories associated with the repository.
	Upstreams?: [...string]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
