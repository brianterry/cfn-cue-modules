package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoTAnalytics::Dataset
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTAnalytics::Dataset"
	Properties: #Properties
}
