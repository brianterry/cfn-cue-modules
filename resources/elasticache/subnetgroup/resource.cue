package subnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElastiCache::SubnetGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::SubnetGroup"
	Properties: #Properties
}
