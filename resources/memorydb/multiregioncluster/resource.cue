package multiregioncluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::MemoryDB::Multi Region Cluster resource creates an Amazon MemoryDB Multi Region Cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MemoryDB::MultiRegionCluster"
	Properties: #Properties
}
