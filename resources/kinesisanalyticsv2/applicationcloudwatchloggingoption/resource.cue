package applicationcloudwatchloggingoption

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption"
	Properties: #Properties
}
