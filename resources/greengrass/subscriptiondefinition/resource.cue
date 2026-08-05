package subscriptiondefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::SubscriptionDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::SubscriptionDefinition"
	Properties: #Properties
}
