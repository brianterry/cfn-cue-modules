package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::Forecast::Dataset
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Forecast::Dataset"
	Properties: #Properties
}
