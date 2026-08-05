package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::MemoryDB::Cluster resource creates an Amazon MemoryDB Cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MemoryDB::Cluster"
	Properties: #Properties
}
