package volume

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WorkspacesInstances::Volume - Manages WorkSpaces Volume resources
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkspacesInstances::Volume"
	Properties: #Properties
}
