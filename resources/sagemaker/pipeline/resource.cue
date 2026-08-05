package pipeline

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Pipeline
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Pipeline"
	Properties: #Properties
}
