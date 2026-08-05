package dedicatedippool

import "strings"

#Properties: {
	// The name of the dedicated IP pool.
	PoolName?: string & =~"^[a-z0-9_-]{0,64}$"
	// Specifies whether the dedicated IP pool is managed or not. The default value is STANDARD.
	ScalingMode?: string & =~"^(STANDARD|MANAGED)$"
	// The tags (keys and values) associated with the dedicated IP pool.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
