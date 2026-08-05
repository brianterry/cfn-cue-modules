package protectconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SMSVOICE::ProtectConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::ProtectConfiguration"
	Properties: #Properties
}
