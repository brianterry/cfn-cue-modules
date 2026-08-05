package workspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::Workspace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::Workspace"
	Properties: #Properties
}
