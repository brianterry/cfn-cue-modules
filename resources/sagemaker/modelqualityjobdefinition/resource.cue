package modelqualityjobdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ModelQualityJobDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ModelQualityJobDefinition"
	Properties: #Properties
}
