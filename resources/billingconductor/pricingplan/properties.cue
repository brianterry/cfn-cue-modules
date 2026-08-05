package pricingplan

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(1024)
	Name: string & =~"[a-zA-Z0-9_\\+=\\.\\-@]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	PricingRuleArns?: [...#PricingRuleArn]
	Tags?: [...#Tag]
}

#PricingRuleArn: string & =~"arn:aws(-cn)?:billingconductor::[0-9]{12}:pricingrule/[a-zA-Z0-9]{10}"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
