package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::Dataset.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::Dataset"
	Properties: #Properties
}
