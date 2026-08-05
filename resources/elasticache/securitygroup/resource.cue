package securitygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElastiCache::SecurityGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::SecurityGroup"
	Properties: #Properties
}
