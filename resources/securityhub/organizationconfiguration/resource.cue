package organizationconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::OrganizationConfiguration resource represents the configuration of your organization in Security Hub. Only the Security Hub administrator account can create Organization Configuration resource in each region and can opt-in to Central Configuration only in the aggregation region of FindingAggregator.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::OrganizationConfiguration"
	Properties: #Properties
}
