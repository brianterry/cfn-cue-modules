package user

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Transfer::User Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transfer::User"
	Properties: #Properties
}
