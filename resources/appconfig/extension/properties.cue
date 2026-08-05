package extension

import "strings"

#Properties: {
	Actions: {...}
	// Description of the extension.
	Description?: string
	LatestVersionNumber?: int
	// Name of the extension.
	Name: string
	Parameters?: {...}
	// An array of key-value tags to apply to this resource.
	Tags?: [...#Tag]
}

#Action: {
	// The description of the extension Action.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The name of the extension action.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ARN of the role for invoking the extension action.
	RoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The URI of the extension action.
	Uri: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Parameter: {
	// The description of the extension Parameter.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Dynamic?: bool
	Required: bool
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
