package customlineitem

import "github.com/brianterry/cfn-cue-modules/cfn"

// A custom line item is an one time charge that is applied to a specific billing group's bill.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BillingConductor::CustomLineItem"
	Properties: #Properties
}
