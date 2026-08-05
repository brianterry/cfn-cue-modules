package workspaceinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WorkspacesInstances::WorkspaceInstance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkspacesInstances::WorkspaceInstance"
	Properties: #Properties
}
