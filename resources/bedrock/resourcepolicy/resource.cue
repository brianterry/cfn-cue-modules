package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::ResourcePolicy Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::ResourcePolicy"
	Properties: #Properties
}
