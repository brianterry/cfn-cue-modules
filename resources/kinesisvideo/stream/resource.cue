package stream

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::KinesisVideo::Stream
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisVideo::Stream"
	Properties: #Properties
}
