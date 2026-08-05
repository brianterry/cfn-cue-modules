package workflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Workflow
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Workflow"
	Properties: #Properties
}
