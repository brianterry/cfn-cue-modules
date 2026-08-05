package pricingplan

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(1024)
	Name: string & =~"[a-zA-Z0-9_\\+=\\.\\-@]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	PricingRuleArns?: [...#PricingRuleArn]
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
