package bridgeoutput

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaConnect::BridgeOutput
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::BridgeOutput"
	Properties: #Properties
}
