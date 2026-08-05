package modelexplainabilityjobdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ModelExplainabilityJobDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ModelExplainabilityJobDefinition"
	Properties: #Properties
}
