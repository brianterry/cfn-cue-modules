package workflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::ImageBuilder::Workflow
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::Workflow"
	Properties: #Properties
}
