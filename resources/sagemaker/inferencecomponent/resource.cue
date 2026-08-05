package inferencecomponent

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::InferenceComponent
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::InferenceComponent"
	Properties: #Properties
}
