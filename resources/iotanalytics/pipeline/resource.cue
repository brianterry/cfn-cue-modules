package pipeline

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoTAnalytics::Pipeline
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTAnalytics::Pipeline"
	Properties: #Properties
}
