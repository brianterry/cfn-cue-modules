package workspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::APS::Workspace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::APS::Workspace"
	Properties: #Properties
}
