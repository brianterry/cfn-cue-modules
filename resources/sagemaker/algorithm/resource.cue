package algorithm

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Algorithm
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Algorithm"
	Properties: #Properties
}
