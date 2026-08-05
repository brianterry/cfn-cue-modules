package server

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Transfer::Server Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::Server"
	Properties: #Properties
}
