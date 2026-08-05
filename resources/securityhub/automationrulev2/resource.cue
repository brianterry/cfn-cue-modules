package automationrulev2

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SecurityHub::AutomationRuleV2
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::AutomationRuleV2"
	Properties: #Properties
}
