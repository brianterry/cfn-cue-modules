package bridge

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaConnect::Bridge
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::Bridge"
	Properties: #Properties
}
