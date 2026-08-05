package billinggroup

import "strings"

#Properties: {
	AccountGrouping: #AccountGrouping
	ComputationPreference: #ComputationPreference
	Description?: string & strings.MaxRunes(1024)
	Name: string & =~"[a-zA-Z0-9_\\+=\\.\\-@]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// This account will act as a virtual payer account of the billing group
	PrimaryAccountId?: string & =~"[0-9]{12}"
	Tags?: [...#Tag]
}

#AccountGrouping: {
	AutoAssociate?: bool
	LinkedAccountIds?: [...string & =~"[0-9]{12}"]
	ResponsibilityTransferArn?: string & =~"arn:[a-z0-9][a-z0-9-.]{0,62}:organizations::[0-9]{12}:transfer/o-[a-z0-9]{10,32}/(billing)/(inbound|outbound)/rt-[0-9a-z]{8,32}"
}

#ComputationPreference: {
	// ARN of the attached pricing plan
	PricingPlanArn: string & =~"arn:aws(-cn)?:billingconductor::(aws|[0-9]{12}):pricingplan/(BasicPricingPlan|Passthrough|[a-zA-Z0-9]{10})"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
