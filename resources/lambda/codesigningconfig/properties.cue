package codesigningconfig

import "strings"

#Properties: {
	// When the CodeSigningConfig is later on attached to a function, the function code will be expected to be signed by profiles from this list
	AllowedPublishers: #AllowedPublishers
	// Policies to control how to act if a signature is invalid
	CodeSigningPolicies?: #CodeSigningPolicies
	// A description of the CodeSigningConfig
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// A list of tags to apply to CodeSigningConfig resource
	Tags?: [...#Tag]
}

#AllowedPublishers: {
	// List of Signing profile version Arns
	SigningProfileVersionArns: [...string & =~"arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)" & strings.MinRunes(12) & strings.MaxRunes(1024)]
}

#CodeSigningPolicies: {
	// Indicates how Lambda operations involve updating the code artifact will operate. Default to Warn if not provided
	UntrustedArtifactOnDeployment: "Warn" | "Enforce"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
