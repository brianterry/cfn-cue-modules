package automationrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::SecurityHub::AutomationRule`` resource specifies an automation rule based on input parameters. For more information, see [Automation rules](https://docs.aws.amazon.com/securityhub/latest/userguide/automation-rules.html) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::AutomationRule"
	Properties: #Properties
}
