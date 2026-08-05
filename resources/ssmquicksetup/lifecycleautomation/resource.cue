package lifecycleautomation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSMQuickSetup::LifecycleAutomation that executes SSM Automation documents in response to CloudFormation lifecycle events.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMQuickSetup::LifecycleAutomation"
	Properties: #Properties
}
