package project

import "strings"

#Properties: {
	// Dataset name
	DatasetName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Project name
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Recipe name
	RecipeName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Role arn
	RoleArn: string
	// Sample
	Sample?: #Sample
	Tags?: [...#Tag]
}

#Sample: {
	// Sample size
	Size?: int & >=1
	// Sample type
	Type: "FIRST_N" | "LAST_N" | "RANDOM"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
