package entity

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTTwinMaker::Entity
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTTwinMaker::Entity"
	Properties: #Properties
}
