package identity

#Properties: {
	DkimSigningEnabled?: bool
	FeedbackForwardingEnabled?: bool
	MailFromAttributes?: #MailFromAttributes
	Name: string
	Tags?: [...#Tags]
}

#MailFromAttributes: {
	BehaviorOnMxFailure?: string
	MailFromDomain?: string
}

#Tags: {
	Key?: string
	Value?: string
}
