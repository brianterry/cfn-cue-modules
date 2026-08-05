package configurationset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::PinpointEmail::ConfigurationSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PinpointEmail::ConfigurationSet"
	Properties: #Properties
}
