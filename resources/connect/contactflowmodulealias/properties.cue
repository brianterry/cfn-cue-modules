package contactflowmodulealias

import "strings"

#Properties: {
	// The identifier of the contact flow module (ARN) this alias is tied to.
	ContactFlowModuleId: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]+:[0-9]{12}:instance/[-a-zA-Z0-9]+/flow-module/[-a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// The version number of the contact flow module this alias points to.
	ContactFlowModuleVersion: int & >=1
	// The description of the alias.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	// The name of the alias.
	Name: string & =~"^([$0-9a-zA-Z][_-]?)+$" & strings.MinRunes(1) & strings.MaxRunes(127)
}
