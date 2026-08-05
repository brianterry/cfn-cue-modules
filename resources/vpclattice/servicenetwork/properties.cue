package servicenetwork

import "strings"

#Properties: {
	AuthType?: "NONE" | "AWS_IAM"
	Name?: string & =~"^(?!servicenetwork-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	SharingConfig?: #SharingConfig
	Tags?: [...#Tag]
}

#SharingConfig: {
	enabled: bool
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
