package index

import "github.com/brianterry/cfn-cue-modules/cfn"

// A Kendra index
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Kendra::Index"
	Properties: #Properties
}
