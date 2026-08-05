package findingaggregator

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::SecurityHub::FindingAggregator`` resource enables cross-Region aggregation. When cross-Region aggregation is enabled, you can aggregate findings, finding updates, insights, control compliance statuses, and security scores from one or more linked Regions to a single aggregation Region. You can then view and manage all of this data from the aggregation Region. For more details about cross-Region aggregation, see [Cross-Region aggregation](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html) in the *User Guide*
// This resource must be created in the Region that you want to designate as your aggregation Region.
// Cross-Region aggregation is also a prerequisite for using [central configuration](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html) in ASH.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::FindingAggregator"
	Properties: #Properties
}
