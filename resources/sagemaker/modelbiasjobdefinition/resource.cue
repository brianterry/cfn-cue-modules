package modelbiasjobdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ModelBiasJobDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ModelBiasJobDefinition"
	Properties: #Properties
}
