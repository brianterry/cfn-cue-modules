package workspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WorkSpaces::Workspace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpaces::Workspace"
	Properties: #Properties
}
