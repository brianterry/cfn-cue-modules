package messagetemplate

import "strings"

#Properties: {
	ChannelSubtype: #ChannelSubtype
	Content: #Content
	DefaultAttributes?: #MessageTemplateAttributes
	// The description of the message template.
	Description?: string & =~"^[a-zA-Z0-9\\\\s_.,-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
	GroupingConfiguration?: #GroupingConfiguration
	// The Amazon Resource Name (ARN) of the knowledge base to which the message template belongs.
	KnowledgeBaseArn: string & =~"^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?$"
	// The language code value for the language in which the message template is written. The supported language codes include de_DE, en_US, es_ES, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, zh_CN, zh_TW
	Language?: string & strings.MinRunes(2) & strings.MaxRunes(5)
	// The name of the message template.
	Name: string & =~"^[a-zA-Z0-9\\\\s_.,-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.
	Tags?: [...#Tag]
}

#AgentAttributes: {
	// The agent’s first name as entered in their Amazon Connect user account.
	FirstName?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The agent’s last name as entered in their Amazon Connect user account.
	LastName?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
}

#AttachmentName: string & strings.MinRunes(1) & strings.MaxRunes(255)

#AttachmentUrl: string & strings.MinRunes(1)

#ChannelSubtype: "EMAIL" | "SMS"

#Content: {
	EmailMessageTemplateContent?: #EmailMessageTemplateContent
	SmsMessageTemplateContent?: #SmsMessageTemplateContent
}

#CustomAttributes: {...}

#CustomerProfileAttributes: {
	// A unique account number that you have given to the customer.
	AccountNumber?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// Any additional information relevant to the customer's profile.
	AdditionalInformation?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The first line of a customer address.
	Address1?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The second line of a customer address.
	Address2?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The third line of a customer address.
	Address3?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The fourth line of a customer address.
	Address4?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The first line of a customer’s billing address.
	BillingAddress1?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The second line of a customer’s billing address.
	BillingAddress2?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The third line of a customer’s billing address.
	BillingAddress3?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The fourth line of a customer’s billing address.
	BillingAddress4?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The city of a customer’s billing address.
	BillingCity?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The country of a customer’s billing address.
	BillingCountry?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The county of a customer’s billing address.
	BillingCounty?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The postal code of a customer’s billing address.
	BillingPostalCode?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The province of a customer’s billing address.
	BillingProvince?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The state of a customer’s billing address.
	BillingState?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's birth date.
	BirthDate?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's business email address.
	BusinessEmailAddress?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The name of the customer's business.
	BusinessName?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's business phone number.
	BusinessPhoneNumber?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The city in which a customer lives.
	City?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The country in which a customer lives.
	Country?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The county in which a customer lives.
	County?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	Custom?: #CustomAttributes
	// The customer's email address, which has not been specified as a personal or business address.
	EmailAddress?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's first name.
	FirstName?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's gender.
	Gender?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's home phone number.
	HomePhoneNumber?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's last name.
	LastName?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The first line of a customer’s mailing address.
	MailingAddress1?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The second line of a customer’s mailing address.
	MailingAddress2?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The third line of a customer’s mailing address.
	MailingAddress3?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The fourth line of a customer’s mailing address.
	MailingAddress4?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The city of a customer’s mailing address.
	MailingCity?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The country of a customer’s mailing address.
	MailingCountry?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The county of a customer’s mailing address.
	MailingCounty?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The postal code of a customer’s mailing address
	MailingPostalCode?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The province of a customer’s mailing address.
	MailingProvince?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The state of a customer’s mailing address.
	MailingState?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's middle name.
	MiddleName?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's mobile phone number.
	MobilePhoneNumber?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's party type.
	PartyType?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The customer's phone number, which has not been specified as a mobile, home, or business number.
	PhoneNumber?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The postal code of a customer address.
	PostalCode?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The ARN of a customer profile.
	ProfileARN?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The unique identifier of a customer profile.
	ProfileId?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The province in which a customer lives.
	Province?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The first line of a customer’s shipping address.
	ShippingAddress1?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The second line of a customer’s shipping address.
	ShippingAddress2?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The third line of a customer’s shipping address.
	ShippingAddress3?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The fourth line of a customer’s shipping address
	ShippingAddress4?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The city of a customer’s shipping address.
	ShippingCity?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The country of a customer’s shipping address.
	ShippingCountry?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The county of a customer’s shipping address.
	ShippingCounty?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The postal code of a customer’s shipping address.
	ShippingPostalCode?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The province of a customer’s shipping address.
	ShippingProvince?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The state of a customer’s shipping address.
	ShippingState?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The state in which a customer lives.
	State?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
}

#EmailMessageTemplateContent: {
	Body: #EmailMessageTemplateContentBody
	// The email headers to include in email messages.
	Headers: [...#EmailMessageTemplateHeader]
	// The subject line, or title, to use in email messages.
	Subject: string & strings.MinRunes(1)
}

#EmailMessageTemplateContentBody: {
	// The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.
	Html?: #MessageTemplateBodyContentProvider
	// The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.
	PlainText?: #MessageTemplateBodyContentProvider
}

#EmailMessageTemplateHeader: {
	// The name of the email header.
	Name?: string & =~"^[!-9;-@A-~]+$" & strings.MinRunes(1) & strings.MaxRunes(126)
	// The value of the email header.
	Value?: string & =~"[ -~]*" & strings.MinRunes(1) & strings.MaxRunes(870)
}

#GroupingConfiguration: {
	// The criteria used for grouping Amazon Q in Connect users.
	Criteria: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The list of values that define different groups of Amazon Q in Connect users.
	Values: [...#GroupingValue]
}

#GroupingValue: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#MessageTemplateAttachment: {
	AttachmentId?: string & strings.MinRunes(1)
	AttachmentName: #AttachmentName
	S3PresignedUrl: #AttachmentUrl
}

#MessageTemplateAttributes: {
	AgentAttributes?: #AgentAttributes
	CustomAttributes?: #CustomAttributes
	CustomerProfileAttributes?: #CustomerProfileAttributes
	SystemAttributes?: #SystemAttributes
}

#MessageTemplateBodyContentProvider: {
	Content?: string & strings.MinRunes(1)
}

#SmsMessageTemplateContent: {
	Body: #SmsMessageTemplateContentBody
}

#SmsMessageTemplateContentBody: {
	PlainText?: #MessageTemplateBodyContentProvider
}

#SystemAttributes: {
	// The CustomerEndpoint attribute.
	CustomerEndpoint?: #SystemEndpointAttributes
	// The name of the task.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
	// The SystemEndpoint attribute.
	SystemEndpoint?: #SystemEndpointAttributes
}

#SystemEndpointAttributes: {
	// The customer's phone number if used with customerEndpoint, or the number the customer dialed to call your contact center if used with systemEndpoint.
	Address?: string & strings.MinRunes(1) & strings.MaxRunes(32767)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
