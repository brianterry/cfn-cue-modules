package workgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RedshiftServerless::Workgroup Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RedshiftServerless::Workgroup"
	Properties: #Properties
}
