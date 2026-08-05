package outpostresolver

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::OutpostResolver.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::OutpostResolver"
	Properties: #Properties
}
