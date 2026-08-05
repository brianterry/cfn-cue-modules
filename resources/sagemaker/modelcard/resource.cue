package modelcard

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ModelCard.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ModelCard"
	Properties: #Properties
}
