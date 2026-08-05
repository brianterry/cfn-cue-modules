package flowvpcinterface

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaConnect::FlowVpcInterface
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::FlowVpcInterface"
	Properties: #Properties
}
