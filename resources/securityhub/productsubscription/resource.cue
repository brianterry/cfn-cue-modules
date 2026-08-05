package productsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::ProductSubscription resource represents a subscription to a service that is allowed to generate findings for your Security Hub account. One product subscription resource is created for each product enabled.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::ProductSubscription"
	Properties: #Properties
}
