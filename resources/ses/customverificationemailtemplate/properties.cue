package customverificationemailtemplate

import "strings"

#Properties: {
	// The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.
	FailureRedirectionURL: string
	// The email address that the custom verification email is sent from.
	FromEmailAddress: string
	// The URL that the recipient of the verification email is sent to if his or her address is successfully verified.
	SuccessRedirectionURL: string
	// The tags (keys and values) associated with the tenant.
	Tags?: [...#Tag]
	// The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations.
	TemplateContent: string
	// The name of the custom verification email template.
	TemplateName: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The subject line of the custom verification email.
	TemplateSubject: string
}

#Tag: {
	// The key of the key-value tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the key-value tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
