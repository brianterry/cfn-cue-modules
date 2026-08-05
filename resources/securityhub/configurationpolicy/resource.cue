package configurationpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::ConfigurationPolicy resource represents the Central Configuration Policy in your account.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::ConfigurationPolicy"
	Properties: #Properties
}
