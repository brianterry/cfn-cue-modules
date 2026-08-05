package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Route53 Recovery Control Cluster resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryControl::Cluster"
	Properties: #Properties
}
