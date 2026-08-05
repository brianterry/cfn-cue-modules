package flow

import "strings"

#Properties: {
	AwsAccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	Description?: string & =~"^(?!\\s+$)[^{}\"\\\\<>]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	FlowDefinition: string
	Name: string & =~"^(?!\\s+$)[^{}\"\\\\<>]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Permissions?: [...#Permission]
}

#FlowPublishState: "PUBLISHED" | "DRAFT" | "PENDING_APPROVAL"

#Permission: {
	Actions: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#StepAliasMapping: {
	StepAlias: string
	StepId: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
