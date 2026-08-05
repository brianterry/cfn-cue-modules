package ipset

import "strings"

#Properties: {
	Activate?: bool
	DetectorId?: string & strings.MinRunes(1) & strings.MaxRunes(300)
	ExpectedBucketOwner?: string
	Format: string
	Location: string & strings.MinRunes(1) & strings.MaxRunes(300)
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(300)
	Tags?: [...#TagItem]
}

#TagItem: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
