package workflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MWAAServerless::Workflow resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MWAAServerless::Workflow"
	Properties: #Properties
}
