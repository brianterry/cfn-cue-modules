package usergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElastiCache::UserGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::UserGroup"
	Properties: #Properties
}
