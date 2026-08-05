package cachecluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::ElastiCache::CacheCluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::CacheCluster"
	Properties: #Properties
}
