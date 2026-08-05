package rungroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Omics::RunGroup Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Omics::RunGroup"
	Properties: #Properties
}
