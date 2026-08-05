package globalresolver

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53GlobalResolver::GlobalResolver
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53GlobalResolver::GlobalResolver"
	Properties: #Properties
}
