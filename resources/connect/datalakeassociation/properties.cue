package datalakeassociation

import "strings"

#Properties: {
	// The identifier of the analytics data set.
	DataSetId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The identifier of the Amazon Connect instance
	InstanceId: string & =~"^[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The identifier of the target account
	TargetAccountId?: string & =~"^\\d+$" & strings.MinRunes(12) & strings.MaxRunes(12)
}
