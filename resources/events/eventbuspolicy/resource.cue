package eventbuspolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Events::EventBusPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Events::EventBusPolicy"
	Properties: #Properties
}
