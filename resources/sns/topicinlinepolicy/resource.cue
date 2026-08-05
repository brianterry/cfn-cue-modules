package topicinlinepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for AWS::SNS::TopicInlinePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SNS::TopicInlinePolicy"
	Properties: #Properties
}
