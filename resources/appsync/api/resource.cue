package api

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AppSync Api
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::Api"
	Properties: #Properties
}
