package modelpackagegroup

import "strings"

#Properties: {
	ModelPackageGroupDescription?: #ModelPackageGroupDescription
	ModelPackageGroupName: #ModelPackageGroupName
	ModelPackageGroupPolicy?: {...}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#ModelPackageGroupArn: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(256)

#ModelPackageGroupDescription: string & =~"[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*" & strings.MaxRunes(1024)

#ModelPackageGroupName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(63)

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MaxRunes(256)
}
