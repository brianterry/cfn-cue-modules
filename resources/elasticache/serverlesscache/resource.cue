package serverlesscache

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ElastiCache::ServerlessCache resource creates an Amazon ElastiCache Serverless Cache.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::ServerlessCache"
	Properties: #Properties
}
