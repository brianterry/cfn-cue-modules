package stream

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::QLDB::Stream.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QLDB::Stream"
	Properties: #Properties
}
