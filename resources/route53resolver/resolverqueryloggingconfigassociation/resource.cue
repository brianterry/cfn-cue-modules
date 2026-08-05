package resolverqueryloggingconfigassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation"
	Properties: #Properties
}
