package resolverendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::Route53Resolver::ResolverEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::ResolverEndpoint"
	Properties: #Properties
}
