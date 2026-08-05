package campaign

import "strings"

#Properties: {
	// Amazon Connect Instance Arn
	ConnectInstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
	DialerConfig: #DialerConfig
	// Amazon Connect Campaign Name
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	OutboundCallConfig: #OutboundCallConfig
	// One or more tags.
	Tags?: [...#Tag]
}

#AgentlessDialerConfig: {
	// Allocates dialing capacity for this campaign between multiple active campaigns.
	DialingCapacity?: number & >=0.01 & <=1
}

#AnswerMachineDetectionConfig: {
	// Enables detection of prompts (e.g., beep after after a voicemail greeting)
	AwaitAnswerMachinePrompt?: bool
	// Flag to decided whether outbound calls should have answering machine detection enabled or not
	EnableAnswerMachineDetection: bool
}

#DialerConfig: {
	AgentlessDialerConfig?: #AgentlessDialerConfig
	PredictiveDialerConfig?: #PredictiveDialerConfig
	ProgressiveDialerConfig?: #ProgressiveDialerConfig
}

#OutboundCallConfig: {
	AnswerMachineDetectionConfig?: #AnswerMachineDetectionConfig
	// The identifier of the contact flow for the outbound call.
	ConnectContactFlowArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/contact-flow/[-a-zA-Z0-9]*$" & strings.MaxRunes(500)
	// The queue for the call. If you specify a queue, the phone displayed for caller ID is the phone number specified in the queue. If you do not specify a queue, the queue defined in the contact flow is used. If you do not specify a queue, you must specify a source phone number.
	ConnectQueueArn?: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/queue/[-a-zA-Z0-9]*$" & strings.MaxRunes(500)
	// The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify a source phone number, you must specify a queue.
	ConnectSourcePhoneNumber?: string & strings.MaxRunes(100)
}

#PredictiveDialerConfig: {
	// The bandwidth allocation of a queue resource.
	BandwidthAllocation: number & >=0 & <=1
	// Allocates dialing capacity for this campaign between multiple active campaigns.
	DialingCapacity?: number & >=0.01 & <=1
}

#ProgressiveDialerConfig: {
	// The bandwidth allocation of a queue resource.
	BandwidthAllocation: number & >=0 & <=1
	// Allocates dialing capacity for this campaign between multiple active campaigns.
	DialingCapacity?: number & >=0.01 & <=1
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that's 1 to 256 characters in length.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
