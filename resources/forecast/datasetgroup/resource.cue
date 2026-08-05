package datasetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a dataset group that holds a collection of related datasets
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Forecast::DatasetGroup"
	Properties: #Properties
}
