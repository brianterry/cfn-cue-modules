package contactflowversion

import "strings"

#Properties: {
	// The ARN of the contact flow this version is tied to.
	ContactFlowId: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]+:[0-9]{12}:instance/[-a-zA-Z0-9]+/contact-flow/[-a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// The description of the version.
	Description?: string & strings.MaxRunes(500)
}
