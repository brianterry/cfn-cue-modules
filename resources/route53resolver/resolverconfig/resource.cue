package resolverconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::ResolverConfig.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::ResolverConfig"
	Properties: #Properties
}
