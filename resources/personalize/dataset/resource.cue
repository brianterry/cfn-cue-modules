package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Personalize::Dataset.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Personalize::Dataset"
	Properties: #Properties
}
