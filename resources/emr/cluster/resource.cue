package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EMR::Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMR::Cluster"
	Properties: #Properties
}
