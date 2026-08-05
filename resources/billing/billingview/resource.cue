package billingview

import "github.com/brianterry/cfn-cue-modules/cfn"

// A billing view is a container of cost & usage metadata.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Billing::BillingView"
	Properties: #Properties
}
