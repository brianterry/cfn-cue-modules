package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoTAnalytics::Channel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTAnalytics::Channel"
	Properties: #Properties
}
