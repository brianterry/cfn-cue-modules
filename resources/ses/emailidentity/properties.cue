package emailidentity

import "strings"

#Properties: {
	ConfigurationSetAttributes?: #ConfigurationSetAttributes
	DkimAttributes?: #DkimAttributes
	DkimSigningAttributes?: #DkimSigningAttributes
	// The email address or domain to verify.
	EmailIdentity: string
	FeedbackAttributes?: #FeedbackAttributes
	MailFromAttributes?: #MailFromAttributes
	// The tags (keys and values) associated with the email identity.
	Tags?: [...#Tag]
}

#ConfigurationSetAttributes: {
	// The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
	ConfigurationSetName?: string
}

#DkimAttributes: {
	// Sets the DKIM signing configuration for the identity. When you set this value true, then the messages that are sent from the identity are signed using DKIM. If you set this value to false, your messages are sent without DKIM signing.
	SigningEnabled?: bool
}

#DkimSigningAttributes: {
	// [Bring Your Own DKIM] A private key that's used to generate a DKIM signature. The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using base64 encoding.
	DomainSigningPrivateKey?: string
	// [Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a domain.
	DomainSigningSelector?: string
	// [Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day.
	NextSigningKeyLength?: string & =~"RSA_1024_BIT|RSA_2048_BIT"
}

#FeedbackAttributes: {
	// If the value is true, you receive email notifications when bounce or complaint events occur
	EmailForwardingEnabled?: bool
}

#MailFromAttributes: {
	// The action to take if the required MX record isn't found when you send an email. When you set this value to UseDefaultValue , the mail is sent using amazonses.com as the MAIL FROM domain. When you set this value to RejectMessage , the Amazon SES API v2 returns a MailFromDomainNotVerified error, and doesn't attempt to deliver the email.
	BehaviorOnMxFailure?: string & =~"USE_DEFAULT_VALUE|REJECT_MESSAGE"
	// The custom MAIL FROM domain that you want the verified identity to use
	MailFromDomain?: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
