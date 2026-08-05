package eventbus

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::Events::EventBus
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Events::EventBus"
	Properties: #Properties
}
