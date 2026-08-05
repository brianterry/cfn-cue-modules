package enabledbaseline

import "strings"

#Properties: {
	BaselineIdentifier: string & =~"^arn:aws[0-9a-zA-Z_\\-:\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	BaselineVersion: string & =~"^\\d+(?:\\.\\d+){0,2}$"
	Parameters?: [...#Parameter]
	Tags?: [...#Tag]
	TargetIdentifier: string & =~"^arn:aws[0-9a-zA-Z_\\-:\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#AnyType: string | {...} | number | [...bool | number | {...} | string] | bool

#Parameter: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Value?: #AnyType
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
