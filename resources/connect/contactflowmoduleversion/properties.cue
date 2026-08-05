package contactflowmoduleversion

import "strings"

#Properties: {
	// The identifier of the contact flow module (ARN) this version is tied to.
	ContactFlowModuleId: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]+:[0-9]{12}:instance/[-a-zA-Z0-9]+/flow-module/[-a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// The description of the version.
	Description?: string & strings.MaxRunes(500)
}
