package namespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SCN::Namespace Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SCN::Namespace"
	Properties: #Properties
}
