package export

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::BCMDataExports::Export Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BCMDataExports::Export"
	Properties: #Properties
}
