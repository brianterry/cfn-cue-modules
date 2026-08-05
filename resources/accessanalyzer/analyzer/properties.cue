package analyzer

import "strings"

#Properties: {
	// The configuration for the analyzer
	AnalyzerConfiguration?: {
		InternalAccessConfiguration?: #InternalAccessConfiguration
		UnusedAccessConfiguration?: #UnusedAccessConfiguration
	}
	// Analyzer name
	AnalyzerName?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	ArchiveRules?: [...#ArchiveRule]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The type of the analyzer, must be one of ACCOUNT, ORGANIZATION, ACCOUNT_INTERNAL_ACCESS, ORGANIZATION_INTERNAL_ACCESS, ACCOUNT_UNUSED_ACCESS and ORGANIZATION_UNUSED_ACCESS
	Type: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#AnalysisRuleCriteria: {
	// A list of AWS account IDs to apply to the analysis rule criteria. The accounts cannot include the organization analyzer owner account. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.
	AccountIds?: [...string]
	// An array of key-value pairs to match for your resources. You can use the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	// For the tag key, you can specify a value that is 1 to 128 characters in length and cannot be prefixed with aws:.
	// For the tag value, you can specify a value that is 0 to 256 characters in length. If the specified tag value is 0 characters, the rule is applied to all principals with the specified tag key.
	ResourceTags?: [...#Tags]
}

#ArchiveRule: {
	Filter: [...#Filter]
	// The archive rule name
	RuleName: string
}

#Filter: {
	Contains?: [...string]
	Eq?: [...string]
	Exists?: bool
	Neq?: [...string]
	Property: string
}

#InternalAccessAnalysisRuleCriteria: {
	// A list of AWS account IDs to apply to the internal access analysis rule criteria. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers and cannot include the organization owner account.
	AccountIds?: [...string]
	// A list of resource ARNs to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources that match these ARNs.
	ResourceArns?: [...string]
	// A list of resource types to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources of these types.
	ResourceTypes?: [...string]
}

#InternalAccessConfiguration: {
	// Contains information about analysis rules for the internal access analyzer. Analysis rules determine which entities will generate findings based on the criteria you define when you create the rule.
	InternalAccessAnalysisRule?: {
		Inclusions?: [...#InternalAccessAnalysisRuleCriteria]
	}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 0 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(255)
}

#UnusedAccessConfiguration: {
	// Contains information about rules for the analyzer.
	AnalysisRule?: {
		Exclusions?: [...#AnalysisRuleCriteria]
	}
	// The specified access age in days for which to generate findings for unused access. For example, if you specify 90 days, the analyzer will generate findings for IAM entities within the accounts of the selected organization for any access that hasn't been used in 90 or more days since the analyzer's last scan. You can choose a value between 1 and 365 days.
	UnusedAccessAge?: int & >=1 & <=365
}
