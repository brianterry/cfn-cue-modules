package computenodegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::PCS::ComputeNodeGroup resource creates an AWS PCS compute node group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCS::ComputeNodeGroup"
	Properties: #Properties
}
