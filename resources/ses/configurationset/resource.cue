package configurationset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SES::ConfigurationSet.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::ConfigurationSet"
	Properties: #Properties
}
