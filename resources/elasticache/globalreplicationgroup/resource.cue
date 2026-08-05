package globalreplicationgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ElastiCache::GlobalReplicationGroup resource creates an Amazon ElastiCache Global Replication Group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::GlobalReplicationGroup"
	Properties: #Properties
}
