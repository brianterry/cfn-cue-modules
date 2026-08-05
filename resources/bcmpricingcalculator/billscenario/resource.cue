package billscenario

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BcmPricingCalculator::BillScenario
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BcmPricingCalculator::BillScenario"
	Properties: #Properties
}
