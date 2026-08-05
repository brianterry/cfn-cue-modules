package trialcomponent

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SageMaker::TrialComponent. A trial component is a stage of a machine learning trial, such as a preprocessing job, training job, or batch transform job.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::TrialComponent"
	Properties: #Properties
}
