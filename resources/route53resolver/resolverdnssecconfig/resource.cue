package resolverdnssecconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53Resolver::ResolverDNSSECConfig.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53Resolver::ResolverDNSSECConfig"
	Properties: #Properties
}
