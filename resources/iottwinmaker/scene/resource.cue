package scene

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTTwinMaker::Scene
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTTwinMaker::Scene"
	Properties: #Properties
}
