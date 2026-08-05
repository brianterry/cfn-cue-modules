package rungroup

import "strings"

#Properties: {
	MaxCpus?: number & >=1 & <=100000
	MaxDuration?: number & >=1 & <=100000
	MaxGpus?: number & >=1 & <=100000
	MaxRuns?: number & >=1 & <=100000
	Name?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: #TagMap
}

#TagMap: {...}
