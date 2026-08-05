package primarytaskset

import "github.com/brianterry/cfn-cue-modules/cfn"

// A pseudo-resource that manages which of your ECS task sets is primary.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::PrimaryTaskSet"
	Properties: #Properties
}
