package template

import "strings"

#Properties: {
	// The tags (keys and values) associated with the email template.
	Tags?: [...#Tag]
	Template?: #Template
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Template: {
	// The HTML body of the email.
	HtmlPart?: string
	// The subject line of the email.
	SubjectPart: string
	// The name of the template.
	TemplateName?: string & =~"^[a-zA-Z0-9_-]{1,64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The email body that is visible to recipients whose email clients do not display HTML content.
	TextPart?: string
}
