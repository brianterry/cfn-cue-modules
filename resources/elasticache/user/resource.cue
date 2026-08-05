package user

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElastiCache::User
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::User"
	Properties: #Properties
}
