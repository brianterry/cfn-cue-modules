package replicationgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::ElastiCache::ReplicationGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::ReplicationGroup"
	Properties: #Properties
}
