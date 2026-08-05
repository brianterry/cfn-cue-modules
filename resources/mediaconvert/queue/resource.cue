package queue

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaConvert::Queue
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConvert::Queue"
	Properties: #Properties
}
