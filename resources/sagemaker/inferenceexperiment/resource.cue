package inferenceexperiment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::InferenceExperiment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::InferenceExperiment"
	Properties: #Properties
}
