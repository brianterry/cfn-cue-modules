package queue

import "strings"

#Properties: {
	// The email addresses that agents can use when replying to or initiating email contacts
	AdditionalEmailAddresses?: [...#EmailAddress]
	// The description of the queue.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(250)
	// The identifier for the hours of operation.
	HoursOfOperationArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/operating-hours/[-a-zA-Z0-9]*$"
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The maximum number of contacts that can be in the queue before it is considered full.
	MaxContacts?: int & >=0
	// The name of the queue.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The outbound caller ID name, number, and outbound whisper flow.
	OutboundCallerConfig?: #OutboundCallerConfig
	// The outbound email address ID.
	OutboundEmailConfig?: #OutboundEmailConfig
	// The quick connects available to agents who are working the queue.
	QuickConnectArns?: [...#QuickConnectArn]
	// The status of the queue.
	Status?: "ENABLED" | "DISABLED"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#EmailAddress: {
	// The Amazon Resource Name (ARN) of the email address
	EmailAddressArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-f0-9]{8}-[-a-f0-9]{4}-[-a-f0-9]{4}-[-a-f0-9]{4}-[-a-f0-9]{12}/email-address/[-a-f0-9]{8}-[-a-f0-9]{4}-[-a-f0-9]{4}-[-a-f0-9]{4}-[-a-f0-9]{12}$"
}

#Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)

#OutboundCallerConfig: {
	OutboundCallerIdName?: #OutboundCallerIdName
	OutboundCallerIdNumberArn?: #OutboundCallerIdNumberArn
	OutboundFlowArn?: #OutboundFlowArn
}

#OutboundCallerIdName: string & strings.MinRunes(1) & strings.MaxRunes(255)

#OutboundCallerIdNumberArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:phone-number/[-a-zA-Z0-9]*$"

#OutboundEmailAddressId: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/email-address/[-a-zA-Z0-9]*$"

#OutboundEmailConfig: {
	OutboundEmailAddressId?: #OutboundEmailAddressId
}

#OutboundFlowArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/contact-flow/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(500)

#QuickConnectArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/transfer-destination/[-a-zA-Z0-9]*$"

#Tag: {
	Key: #Key
	Value: #Value
}

#Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
