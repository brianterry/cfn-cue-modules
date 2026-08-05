package loadbalancer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElasticLoadBalancing::LoadBalancer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancing::LoadBalancer"
	Properties: #Properties
}
