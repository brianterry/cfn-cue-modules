package studio

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EMR::Studio
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMR::Studio"
	Properties: #Properties
}
