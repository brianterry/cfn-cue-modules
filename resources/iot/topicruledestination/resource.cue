package topicruledestination

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::TopicRuleDestination
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::TopicRuleDestination"
	Properties: #Properties
}
