package workspacespool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WorkSpaces::WorkspacesPool
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpaces::WorkspacesPool"
	Properties: #Properties
}
