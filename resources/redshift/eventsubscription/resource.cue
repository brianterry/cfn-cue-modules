package eventsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// The `AWS::Redshift::EventSubscription` resource creates an Amazon Redshift Event Subscription.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::EventSubscription"
	Properties: #Properties
}
