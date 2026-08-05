package ruleset

import "strings"

#Properties: {
	// Description of the Ruleset
	Description?: string & strings.MaxRunes(1024)
	// Name of the Ruleset
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// List of the data quality rules in the ruleset
	Rules: [...#Rule]
	Tags?: [...#Tag]
	// Arn of the target resource (dataset) to apply the ruleset to
	TargetArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#ColumnSelector: {
	// The name of a column from a dataset
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// A regular expression for selecting a column from a dataset
	Regex?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Rule: {
	CheckExpression: #Expression
	ColumnSelectors?: [...#ColumnSelector]
	Disabled?: #Disabled
	// Name of the rule
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	SubstitutionMap?: #ValuesMap
	Threshold?: #Threshold
}

#SubstitutionValue: {
	// Value or column name
	Value: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// Variable name
	ValueReference: string & =~"^:[A-Za-z0-9_]+$" & strings.MinRunes(2) & strings.MaxRunes(128)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Threshold: {
	Type?: #ThresholdType
	Unit?: #ThresholdUnit
	Value: #ThresholdValue
}
