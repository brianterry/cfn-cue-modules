package accountpolicy

import "strings"

#Properties: {
	// The body of the policy document you want to use for this topic.
	// You can only add one policy per PolicyType.
	// The policy must be in JSON string format.
	// Length Constraints: Maximum length of 30720
	PolicyDocument: string & strings.MinRunes(1) & strings.MaxRunes(30720)
	// The name of the account policy
	PolicyName: string & =~"^[^:*]{1,256}$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Type of the policy.
	PolicyType: "DATA_PROTECTION_POLICY" | "SUBSCRIPTION_FILTER_POLICY" | "FIELD_INDEX_POLICY" | "TRANSFORMER_POLICY" | "METRIC_EXTRACTION_POLICY"
	// Scope for policy application
	Scope?: "ALL"
	// Log group  selection criteria to apply policy only to a subset of log groups. SelectionCriteria string can be up to 25KB and cloudwatchlogs determines the length of selectionCriteria by using its UTF-8 bytes
	SelectionCriteria?: string
}
