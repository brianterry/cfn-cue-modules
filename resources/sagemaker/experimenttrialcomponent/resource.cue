package experimenttrialcomponent

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS SageMaker Experiment Trial Component
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ExperimentTrialComponent"
	Properties: #Properties
}
