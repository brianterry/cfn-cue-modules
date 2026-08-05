package podidentityassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// An object representing an Amazon EKS PodIdentityAssociation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::PodIdentityAssociation"
	Properties: #Properties
}
