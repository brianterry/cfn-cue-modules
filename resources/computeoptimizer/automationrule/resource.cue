package automationrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an AWS Compute Optimizer automation rule that automatically implements recommended actions based on your defined criteria and schedule. Automation rules are global resources that manage automated actions across all AWS Regions where Compute Optimizer Automation is available. Organization-level rules can only be created by the management account or delegated administrator.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ComputeOptimizer::AutomationRule"
	Properties: #Properties
}
