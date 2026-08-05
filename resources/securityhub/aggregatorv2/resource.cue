package aggregatorv2

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::AggregatorV2 resource represents the AWS Security Hub AggregatorV2 in your account. One aggregatorv2 resource is created for each account in non opt-in region in which you configure region linking mode.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::AggregatorV2"
	Properties: #Properties
}
