package truststore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElasticLoadBalancingV2::TrustStore
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancingV2::TrustStore"
	Properties: #Properties
}
