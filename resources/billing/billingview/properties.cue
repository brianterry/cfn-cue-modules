package billingview

import "strings"

#Properties: {
	DataFilterExpression?: {
		Dimensions?: {
			Key?: #DimensionKey
			Values?: [...string & =~"[\\S\\s]*" & strings.MaxRunes(1024)]
		}
		Tags?: {
			Key?: string & =~"[\\S\\s]*" & strings.MaxRunes(1024)
			Values?: [...string & =~"[\\S\\s]*" & strings.MaxRunes(1024)]
		}
		TimeRange?: {
			BeginDateInclusive?: #Timestamp
			EndDateInclusive?: #Timestamp
		}
	}
	Description?: string & strings.MaxRunes(1024)
	Name: string & =~"[a-zA-Z0-9_\\+=\\.\\-@]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// An array of strings that define the billing view's source.
	SourceViews: [...string & =~"arn:aws[a-z-]*:(billing)::[0-9]{12}:billingview/[a-zA-Z0-9_+=.@-]{1,75}"]
	// An array of key-value pairs associated to the billing view being created.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
