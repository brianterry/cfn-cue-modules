package applicationoutput

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KinesisAnalyticsV2::ApplicationOutput
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisAnalyticsV2::ApplicationOutput"
	Properties: #Properties
}
