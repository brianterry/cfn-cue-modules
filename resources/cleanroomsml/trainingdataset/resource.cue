package trainingdataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::CleanRoomsML::TrainingDataset Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRoomsML::TrainingDataset"
	Properties: #Properties
}
