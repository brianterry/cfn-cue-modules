package vpcconnector

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AppRunner::VpcConnector resource specifies an App Runner VpcConnector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppRunner::VpcConnector"
	Properties: #Properties
}
