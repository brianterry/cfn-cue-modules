package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::BedrockMantle::Project
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockMantle::Project"
	Properties: #Properties
}
