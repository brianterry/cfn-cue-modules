package streamconsumer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Kinesis::StreamConsumer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Kinesis::StreamConsumer"
	Properties: #Properties
}
