package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::PCS::Cluster resource creates an AWS PCS cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCS::Cluster"
	Properties: #Properties
}
