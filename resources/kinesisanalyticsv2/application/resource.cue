package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see [Creating an Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisAnalyticsV2::Application"
	Properties: #Properties
}
