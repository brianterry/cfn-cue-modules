package loadbalancer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies an Application Load Balancer, a Network Load Balancer, or a Gateway Load Balancer.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancingV2::LoadBalancer"
	Properties: #Properties
}
