package queue

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::PCS::Queue resource creates an AWS PCS queue.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCS::Queue"
	Properties: #Properties
}
