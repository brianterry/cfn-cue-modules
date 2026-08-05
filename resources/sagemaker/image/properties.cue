package image

import "strings"

#Properties: {
	ImageDescription?: #ImageDescription
	ImageDisplayName?: #ImageDisplayName
	ImageName: #ImageName
	ImageRoleArn: #ImageRoleArn
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#ImageArn: string & =~"^arn:aws(-[\\w]+)*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:image\\/[a-zA-Z0-9]([-.]?[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(256)

#ImageDescription: string & =~".+" & strings.MinRunes(1) & strings.MaxRunes(512)

#ImageDisplayName: string & =~"^[A-Za-z0-9 -_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)

#ImageName: string & =~"^[a-zA-Z0-9]([-.]?[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)

#ImageRoleArn: string & =~"^arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*$" & strings.MinRunes(1) & strings.MaxRunes(256)

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
