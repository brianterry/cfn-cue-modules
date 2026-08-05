package smstemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::SmsTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::SmsTemplate"
	Properties: #Properties
}
