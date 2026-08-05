package mlflowapp

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SageMaker::MlflowApp
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::MlflowApp"
	Properties: #Properties
}
