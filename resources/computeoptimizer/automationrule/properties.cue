package automationrule

import "strings"

#Properties: {
	// Filter criteria that specify which recommended actions qualify for implementation.
	Criteria?: #Criteria
	// The description of the automation rule.
	Description?: string & =~"^[a-zA-Z0-9_\\-\\s@\\.]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The name of the automation rule.
	Name: string & =~"^[a-zA-Z0-9_-]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// Organization configuration for organization rules, including rule apply order and account scope.
	OrganizationConfiguration?: #OrganizationConfiguration
	// Rule priority within its group
	Priority?: string
	// The types of recommended actions this rule will implement.
	RecommendedActionTypes: [..."SnapshotAndDeleteUnattachedEbsVolume" | "UpgradeEbsVolumeType"]
	// The type of automation rule.
	RuleType: "AccountRule" | "OrganizationRule"
	// The schedule configuration for when the rule runs.
	Schedule: #Schedule
	// The status of the automation rule.
	Status: "Active" | "Inactive"
	// Tags associated with the automation rule.
	Tags?: [...#Tag]
}

#Criteria: {
	EbsVolumeSizeInGib?: #IntegerCriteriaConditionList
	EbsVolumeType?: #StringCriteriaConditionList
	EstimatedMonthlySavings?: #DoubleCriteriaConditionList
	LookBackPeriodInDays?: #IntegerCriteriaConditionList
	Region?: #StringCriteriaConditionList
	ResourceArn?: #StringCriteriaConditionList
	ResourceTag?: #ResourceTagsCriteriaConditionList
	RestartNeeded?: #StringCriteriaConditionList
}

#DoubleCriteriaCondition: {
	Comparison?: "StringEquals" | "StringNotEquals" | "StringEqualsIgnoreCase" | "StringNotEqualsIgnoreCase" | "StringLike" | "StringNotLike" | "NumericEquals" | "NumericNotEquals" | "NumericLessThan" | "NumericLessThanEquals" | "NumericGreaterThan" | "NumericGreaterThanEquals"
	Values?: [...number]
}

#DoubleCriteriaConditionList: [...#DoubleCriteriaCondition]

#IntegerCriteriaCondition: {
	Comparison?: "StringEquals" | "StringNotEquals" | "StringEqualsIgnoreCase" | "StringNotEqualsIgnoreCase" | "StringLike" | "StringNotLike" | "NumericEquals" | "NumericNotEquals" | "NumericLessThan" | "NumericLessThanEquals" | "NumericGreaterThan" | "NumericGreaterThanEquals"
	Values?: [...int]
}

#IntegerCriteriaConditionList: [...#IntegerCriteriaCondition]

#OrganizationConfiguration: {
	// List of account IDs where the organization rule applies
	AccountIds?: [...string & =~"^[0-9]{12}$"]
	// When the rule should be applied relative to account rules
	RuleApplyOrder?: "BeforeAccountRules" | "AfterAccountRules"
}

#ResourceTagsCriteriaCondition: {
	Comparison?: "StringEquals" | "StringNotEquals" | "StringEqualsIgnoreCase" | "StringNotEqualsIgnoreCase" | "StringLike" | "StringNotLike" | "NumericEquals" | "NumericNotEquals" | "NumericLessThan" | "NumericLessThanEquals" | "NumericGreaterThan" | "NumericGreaterThanEquals"
	Key?: string & =~"^[\\w\\s\\.\\-\\:\\/\\=\\+\\@\\*\\?]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Values?: [...string & =~"^[\\w\\s\\.\\-\\:\\/\\=\\+\\@\\*\\?]+$" & strings.MinRunes(1) & strings.MaxRunes(512)]
}

#ResourceTagsCriteriaConditionList: [...#ResourceTagsCriteriaCondition]

#Schedule: {
	// Execution window duration in minutes
	ExecutionWindowInMinutes?: int & >=60 & <=1440
	// Schedule expression (e.g., cron or rate expression)
	ScheduleExpression?: string
	// IANA timezone identifier
	ScheduleExpressionTimezone?: string
}

#StringCriteriaCondition: {
	Comparison?: "StringEquals" | "StringNotEquals" | "StringEqualsIgnoreCase" | "StringNotEqualsIgnoreCase" | "StringLike" | "StringNotLike" | "NumericEquals" | "NumericNotEquals" | "NumericLessThan" | "NumericLessThanEquals" | "NumericGreaterThan" | "NumericGreaterThanEquals"
	Values?: [...string & =~"^[\\w\\s\\.\\-\\:\\/\\=\\+\\@\\*\\?]+$" & strings.MinRunes(1) & strings.MaxRunes(512)]
}

#StringCriteriaConditionList: [...#StringCriteriaCondition]

#Tag: {
	Key: string & =~"^[\\w\\s\\.\\-\\:\\/\\=\\+\\@]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[\\w\\s\\.\\-\\:\\/\\=\\+\\@]*$" & strings.MaxRunes(256)
}
