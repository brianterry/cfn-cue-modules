package parametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElastiCache::ParameterGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElastiCache::ParameterGroup"
	Properties: #Properties
}
