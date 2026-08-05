package targetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElasticLoadBalancingV2::TargetGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancingV2::TargetGroup"
	Properties: #Properties
}
