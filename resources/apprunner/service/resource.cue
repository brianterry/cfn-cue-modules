package service

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AppRunner::Service resource specifies an AppRunner Service.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppRunner::Service"
	Properties: #Properties
}
