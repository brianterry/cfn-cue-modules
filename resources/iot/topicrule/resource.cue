package topicrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::TopicRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::TopicRule"
	Properties: #Properties
}
