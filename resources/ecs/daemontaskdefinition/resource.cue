package daemontaskdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// The details of a daemon task definition. A daemon task definition is a template that describes the containers that form a daemon. Daemons deploy cross-cutting software agents independently across your Amazon ECS infrastructure.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::DaemonTaskDefinition"
	Properties: #Properties
}
