package queue

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::Queue
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::Queue"
	Properties: #Properties
}
