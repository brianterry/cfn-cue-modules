package costcategory

import "strings"

#Properties: {
	// The default value for the cost category
	DefaultValue?: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(50)
	RuleVersion: "CostCategoryExpression.v1"
	// JSON array format of Expression in Billing and Cost Management API
	Rules: string
	// Json array format of CostCategorySplitChargeRule in Billing and Cost Management API
	SplitChargeRules?: string
	// Tags to assign to the cost category.
	Tags?: [...#ResourceTag]
}

#ResourceTag: {
	// The key name for the tag.
	Key: string & =~"^(?!aws:).*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#ZonedDateTime: string & =~"^\\d{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d(([+-]\\d\\d:\\d\\d)|Z)$" & strings.MinRunes(20) & strings.MaxRunes(25)
