package billinggroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// A billing group is a set of linked account which belong to the same end customer. It can be seen as a virtual consolidated billing family.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BillingConductor::BillingGroup"
	Properties: #Properties
}
