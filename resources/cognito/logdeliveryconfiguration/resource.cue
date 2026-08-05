package logdeliveryconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::LogDeliveryConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::LogDeliveryConfiguration"
	Properties: #Properties
}
