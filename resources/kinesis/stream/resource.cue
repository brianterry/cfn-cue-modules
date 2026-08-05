package stream

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Kinesis::Stream
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Kinesis::Stream"
	Properties: #Properties
}
