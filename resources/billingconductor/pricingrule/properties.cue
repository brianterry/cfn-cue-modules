package pricingrule

import "strings"

#Properties: {
	// The seller of services provided by AWS, their affiliates, or third-party providers selling services via AWS Marketplaces. Supported billing entities are AWS, AWS Marketplace, and AISPL.
	BillingEntity?: "AWS" | "AWS Marketplace" | "AISPL"
	// Pricing rule description
	Description?: string & strings.MaxRunes(1024)
	// Pricing rule modifier percentage
	ModifierPercentage?: number & >=0
	// Pricing rule name
	Name: string & =~"[a-zA-Z0-9_\\+=\\.\\-@]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Operation which a SKU pricing rule is modifying
	Operation?: string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A term used to categorize the granularity of a Pricing Rule.
	Scope: "GLOBAL" | "SERVICE" | "BILLING_ENTITY" | "SKU"
	// The service which a pricing rule is applied on
	Service?: string & =~"[a-zA-Z0-9\\.\\-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: [...#Tag]
	// The set of tiering configurations for the pricing rule.
	Tiering?: {
		FreeTier?: #FreeTier
	}
	// One of MARKUP, DISCOUNT or TIERING that describes the behaviour of the pricing rule.
	Type: "MARKUP" | "DISCOUNT" | "TIERING"
	// The UsageType which a SKU pricing rule is modifying
	UsageType?: string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#FreeTier: {
	Activated: bool
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
