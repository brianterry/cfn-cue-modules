package workflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Transfer::Workflow
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::Workflow"
	Properties: #Properties
}
