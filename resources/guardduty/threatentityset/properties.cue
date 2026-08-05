package threatentityset

import "strings"

#Properties: {
	Activate?: bool
	DetectorId?: string & strings.MinRunes(1) & strings.MaxRunes(32)
	ExpectedBucketOwner?: string
	Format: string & strings.MinRunes(1) & strings.MaxRunes(300)
	Location: string & strings.MinRunes(1) & strings.MaxRunes(300)
	Name?: string
	Tags?: [...#TagItem]
}

#TagItem: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
