package rulegroupsnamespace

import "strings"

#Properties: {
	// The RuleGroupsNamespace data.
	Data: string
	// The RuleGroupsNamespace name.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// Required to identify a specific APS Workspace associated with this RuleGroupsNamespace.
	Workspace: string & =~"^arn:(aws|aws-us-gov|aws-cn):aps:[a-z0-9-]+:[0-9]+:workspace/[a-zA-Z0-9-]+$"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
