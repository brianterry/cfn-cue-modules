package namespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RedshiftServerless::Namespace Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RedshiftServerless::Namespace"
	Properties: #Properties
}
