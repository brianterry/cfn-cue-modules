package flowentitlement

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaConnect::FlowEntitlement
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::FlowEntitlement"
	Properties: #Properties
}
