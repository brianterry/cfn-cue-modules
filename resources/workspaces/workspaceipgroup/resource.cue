package workspaceipgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for an IP access control group for Amazon WorkSpaces.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpaces::WorkspaceIpGroup"
	Properties: #Properties
}
