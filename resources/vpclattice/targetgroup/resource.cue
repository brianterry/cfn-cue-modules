package targetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// A target group is a collection of targets, or compute resources, that run your application or service. A target group can only be used by a single service.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::TargetGroup"
	Properties: #Properties
}
