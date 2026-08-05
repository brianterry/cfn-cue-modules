package model

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SageMaker::Model
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Model"
	Properties: #Properties
}
