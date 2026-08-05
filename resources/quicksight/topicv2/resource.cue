package topicv2

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::TopicV2 Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::TopicV2"
	Properties: #Properties
}
