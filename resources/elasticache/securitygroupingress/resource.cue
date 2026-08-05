package securitygroupingress

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElastiCache::SecurityGroupIngress
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::SecurityGroupIngress"
	Properties: #Properties
}
