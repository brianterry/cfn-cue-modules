package listenercertificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElasticLoadBalancingV2::ListenerCertificate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancingV2::ListenerCertificate"
	Properties: #Properties
}
