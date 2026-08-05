package solution

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Personalize::Solution.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Personalize::Solution"
	Properties: #Properties
}
