package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Retrieves information about the resource policy. The resource policy is an IAM policy created by AWS RAM on behalf of the resource owner when they share a resource.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::ResourcePolicy"
	Properties: #Properties
}
