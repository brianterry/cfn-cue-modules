package configurationset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SMSVOICE::ConfigurationSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::ConfigurationSet"
	Properties: #Properties
}
