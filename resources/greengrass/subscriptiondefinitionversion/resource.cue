package subscriptiondefinitionversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::SubscriptionDefinitionVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::SubscriptionDefinitionVersion"
	Properties: #Properties
}
