package resolverrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Route53Resolver::ResolverRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::ResolverRule"
	Properties: #Properties
}
