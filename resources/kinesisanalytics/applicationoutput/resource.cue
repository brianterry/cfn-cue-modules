package applicationoutput

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KinesisAnalytics::ApplicationOutput
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisAnalytics::ApplicationOutput"
	Properties: #Properties
}
