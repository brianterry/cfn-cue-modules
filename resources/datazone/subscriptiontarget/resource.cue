package subscriptiontarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// Subscription targets enables one to access the data to which you have subscribed in your projects.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::SubscriptionTarget"
	Properties: #Properties
}
