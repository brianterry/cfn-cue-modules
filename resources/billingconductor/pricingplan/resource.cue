package pricingplan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Pricing Plan enables you to customize your billing details consistent with the usage that accrues in each of your billing groups.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BillingConductor::PricingPlan"
	Properties: #Properties
}
