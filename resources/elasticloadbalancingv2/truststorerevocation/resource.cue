package truststorerevocation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElasticLoadBalancingV2::TrustStoreRevocation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancingV2::TrustStoreRevocation"
	Properties: #Properties
}
