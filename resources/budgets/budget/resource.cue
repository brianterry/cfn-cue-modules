package budget

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Budgets::Budget
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Budgets::Budget"
	Properties: #Properties
}
