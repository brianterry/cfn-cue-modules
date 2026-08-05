package subscribernotification

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityLake::SubscriberNotification
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityLake::SubscriberNotification"
	Properties: #Properties
}
