package bridgesource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaConnect::BridgeSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::BridgeSource"
	Properties: #Properties
}
