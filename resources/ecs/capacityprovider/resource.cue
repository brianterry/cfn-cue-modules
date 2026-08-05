package capacityprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ECS::CapacityProvider.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::CapacityProvider"
	Properties: #Properties
}
