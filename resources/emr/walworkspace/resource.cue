package walworkspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EMR::WALWorkspace Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMR::WALWorkspace"
	Properties: #Properties
}
