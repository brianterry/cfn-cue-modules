package dataqualityjobdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::DataQualityJobDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::DataQualityJobDefinition"
	Properties: #Properties
}
