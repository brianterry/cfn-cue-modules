package blueprint

import "strings"

#Properties: {
	// Specifies a path in Amazon S3 where the blueprint is published.
	BlueprintLocation: string & =~"^s3://([^/]+)/([^/]+/)*([^/]+)$" & strings.MinRunes(1) & strings.MaxRunes(8192)
	// A description of the blueprint.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// The name of the blueprint.
	Name: string & =~"^[\\.\\-_A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tags to be applied to this blueprint.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
