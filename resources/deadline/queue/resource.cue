package queue

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::Queue
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::Queue"
	Properties: #Properties
}
