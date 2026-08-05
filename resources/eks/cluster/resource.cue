package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// An object representing an Amazon EKS cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::Cluster"
	Properties: #Properties
}
