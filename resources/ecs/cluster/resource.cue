package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ECS::Cluster`` resource creates an Amazon Elastic Container Service (Amazon ECS) cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::Cluster"
	Properties: #Properties
}
