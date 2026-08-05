package configuration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::Configuration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::Configuration"
	Properties: #Properties
}
