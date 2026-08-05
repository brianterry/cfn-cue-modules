package queueinlinepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for SQS QueueInlinePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SQS::QueueInlinePolicy"
	Properties: #Properties
}
