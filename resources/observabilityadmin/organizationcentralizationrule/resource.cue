package organizationcentralizationrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS:ObservabilityAdmin:OrganizationCentralizationRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ObservabilityAdmin::OrganizationCentralizationRule"
	Properties: #Properties
}
