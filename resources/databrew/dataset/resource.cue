package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataBrew::Dataset.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataBrew::Dataset"
	Properties: #Properties
}
