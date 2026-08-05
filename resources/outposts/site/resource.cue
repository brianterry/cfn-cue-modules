package site

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Outposts::Site Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Outposts::Site"
	Properties: #Properties
}
