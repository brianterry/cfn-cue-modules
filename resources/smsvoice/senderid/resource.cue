package senderid

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SMSVOICE::SenderId
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::SenderId"
	Properties: #Properties
}
