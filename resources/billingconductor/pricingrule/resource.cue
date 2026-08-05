package pricingrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// A markup/discount that is defined for a specific set of services that can later be associated with a pricing plan.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BillingConductor::PricingRule"
	Properties: #Properties
}
