package componenttype

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTTwinMaker::ComponentType
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTTwinMaker::ComponentType"
	Properties: #Properties
}
