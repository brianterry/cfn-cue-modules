package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EMRServerless::Application Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMRServerless::Application"
	Properties: #Properties
}
