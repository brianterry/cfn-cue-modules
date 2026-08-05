package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DAX::Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DAX::Cluster"
	Properties: #Properties
}
