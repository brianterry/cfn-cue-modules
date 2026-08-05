package listener

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a listener for an Application Load Balancer, Network Load Balancer, or Gateway Load Balancer.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancingV2::Listener"
	Properties: #Properties
}
