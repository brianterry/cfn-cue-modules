package resolverqueryloggingconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::ResolverQueryLoggingConfig.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::ResolverQueryLoggingConfig"
	Properties: #Properties
}
