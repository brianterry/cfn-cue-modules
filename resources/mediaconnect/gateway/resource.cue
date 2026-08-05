package gateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaConnect::Gateway
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::Gateway"
	Properties: #Properties
}
