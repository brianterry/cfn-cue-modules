package datasetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::Personalize::DatasetGroup.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Personalize::DatasetGroup"
	Properties: #Properties
}
