package nodegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EKS::Nodegroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::Nodegroup"
	Properties: #Properties
}
