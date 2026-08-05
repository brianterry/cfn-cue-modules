package faq

import "github.com/brianterry/cfn-cue-modules/cfn"

// A Kendra FAQ resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Kendra::Faq"
	Properties: #Properties
}
