package workspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTTwinMaker::Workspace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTTwinMaker::Workspace"
	Properties: #Properties
}
