package configuration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Omics::Configuration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::Configuration"
	Properties: #Properties
}
