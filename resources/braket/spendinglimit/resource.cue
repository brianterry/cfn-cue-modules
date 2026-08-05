package spendinglimit

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a spending limit for a specified quantum device. Spending limits help you control costs by setting maximum amounts that can be spent on quantum computing tasks within a specified time period.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Braket::SpendingLimit"
	Properties: #Properties
}
