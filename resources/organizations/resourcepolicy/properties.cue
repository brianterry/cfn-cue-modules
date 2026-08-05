package resourcepolicy

import "strings"

#Properties: {
	// The policy document. For AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it.
	Content: {...}
	// A list of tags that you want to attach to the resource policy
	Tags?: [...#Tag]
}

#Tag: {
	// The key identifier, or name, of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The string value that's associated with the key of the tag. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
