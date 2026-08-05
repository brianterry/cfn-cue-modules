package project

import "strings"

#Properties: {
	ProjectName: #ProjectName
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Arn: string & =~"(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:project/[a-zA-Z0-9_.\\-]{1,255}/[0-9]+$)" & strings.MaxRunes(2048)

#ProjectName: string & =~"[a-zA-Z0-9][a-zA-Z0-9_\\-]*" & strings.MinRunes(1) & strings.MaxRunes(255)

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"\\A(?!aws:)[a-zA-Z0-9+\\-=\\._\\:\\/@]+$" & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"\\A[a-zA-Z0-9+\\-=\\._\\:\\/@]+$" & strings.MaxRunes(256)
}
