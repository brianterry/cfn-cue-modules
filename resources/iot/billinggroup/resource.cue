package billinggroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::BillingGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::BillingGroup"
	Properties: #Properties
}
