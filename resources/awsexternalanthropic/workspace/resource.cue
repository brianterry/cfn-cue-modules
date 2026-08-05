package workspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::AWSExternalAnthropic::Workspace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AWSExternalAnthropic::Workspace"
	Properties: #Properties
}
