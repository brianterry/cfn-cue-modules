package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents an AWS Supply Chain data lake dataset.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SCN::Dataset"
	Properties: #Properties
}
